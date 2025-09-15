import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:markdown/markdown.dart' as m;

SpanNodeGeneratorWithTag variableGenerator(Map<String, Widget> variables) =>
    SpanNodeGeneratorWithTag(
      tag: _variableTag,
      generator: (e, config, visitor) => VariableNode(
        variables[e.attributes['content']] ??
            Text(
              "can't find the ${e.attributes['content']}",
              style: TextStyle(color: Colors.red),
            ),
      ),
    );

const _variableTag = 'variable';

class VariableSyntax extends m.InlineSyntax {
  VariableSyntax() : super(r'@[a-zA-Z_][a-zA-Z0-9_]*');

  @override
  bool onMatch(m.InlineParser parser, Match match) {
    final input = match.input;
    final matchValue = input.substring(match.start, match.end);
    String content = matchValue.substring(1);
    m.Element el = m.Element.text(_variableTag, matchValue);
    el.attributes['content'] = content;
    parser.addNode(el);
    return true;
  }
}

class VariableNode extends SpanNode {
  final Widget child;

  VariableNode(this.child);

  @override
  InlineSpan build() {
    return WidgetSpan(alignment: PlaceholderAlignment.middle, child: child);
  }
}
