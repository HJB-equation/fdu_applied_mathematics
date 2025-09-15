import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:markdown/markdown.dart' as m;

SpanNodeGeneratorWithTag latexGenerator = SpanNodeGeneratorWithTag(
  tag: _latexTag,
  generator: (e, config, visitor) =>
      LatexNode(e.attributes, e.textContent, config),
);

const _latexTag = 'latex';

class LatexSyntax extends m.InlineSyntax {
  // $`...`$ github style
  LatexSyntax() : super(r'(\$\$[\s\S]+\$\$)|(\$`.+?`\$)|(\$.+?\$)');

  @override
  bool onMatch(m.InlineParser parser, Match match) {
    final input = match.input;
    final matchValue = input.substring(match.start, match.end);
    String content = '';
    bool isInline = true;
    const blockSyntax = '\$\$';
    const inlineSyntax = '\$';
    if (matchValue.startsWith(blockSyntax) &&
        matchValue.endsWith(blockSyntax) &&
        (matchValue != blockSyntax)) {
      content = matchValue.substring(2, matchValue.length - 2);
      isInline = false;
    } else if (matchValue.startsWith('\$`') &&
        matchValue.endsWith('`\$') &&
        matchValue != '\$`') {
      content = matchValue.substring(2, matchValue.length - 2);
    } else if (matchValue.startsWith(inlineSyntax) &&
        matchValue.endsWith(inlineSyntax) &&
        matchValue != inlineSyntax) {
      content = matchValue.substring(1, matchValue.length - 1);
    }
    m.Element el = m.Element.text(_latexTag, matchValue);
    el.attributes['content'] = content;
    el.attributes['isInline'] = '$isInline';
    parser.addNode(el);
    return true;
  }
}

class LatexPreview extends StatelessWidget {
  final String latex;
  final bool isInline;
  final TextStyle style;

  const LatexPreview({
    super.key,
    required this.latex,
    this.isInline = true,
    TextStyle? style,
  }) : style = style ?? const TextStyle(fontSize: 16);

  factory LatexPreview.inline(String latex) =>
      LatexPreview(latex: latex, isInline: true);
  factory LatexPreview.block(String latex) =>
      LatexPreview(latex: latex, isInline: false);

  @override
  Widget build(BuildContext context) {
    if (latex.isEmpty) return SizedBox();
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final latexWidget = Math.tex(
      latex,
      mathStyle: MathStyle.text,
      textStyle: style.copyWith(color: isDark ? Colors.white : Colors.black),
      textScaleFactor: 1,
      onErrorFallback: (error) =>
          Text(latex, style: style.copyWith(color: Colors.red)),
    );
    return !isInline
        ? Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: latexWidget),
          )
        : latexWidget;
  }
}

class LatexNode extends SpanNode {
  final Map<String, String> attributes;
  final String textContent;
  final MarkdownConfig config;

  LatexNode(this.attributes, this.textContent, this.config);

  @override
  InlineSpan build() {
    final content = attributes['content'] ?? '';
    final isInline = attributes['isInline'] == 'true';
    final style = parentStyle ?? config.p.textStyle;

    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: LatexPreview(latex: content, isInline: isInline, style: style),
    );
  }
}
