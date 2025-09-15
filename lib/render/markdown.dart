import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markdown_widget/markdown_widget.dart';

import 'latex.dart';
import 'code_wrapper.dart';
import 'variable.dart';

class MarkdownViewer extends StatelessWidget {
  final String path;
  final TocController? tocController;
  final Map<String, Widget> variables;
  const MarkdownViewer({
    super.key,
    required this.path,
    this.tocController,
    this.variables = const {},
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: rootBundle.loadString(path),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          return Padding(
            padding: EdgeInsets.all(16.0),
            child: MarkdownWidget(
              data: snapshot.data!,
              tocController: tocController,
              config: MarkdownConfig.defaultConfig.copy(
                configs: [PreConfig().copy(wrapper: codeWrapper)],
              ),
              markdownGenerator: MarkdownGenerator(
                generators: [latexGenerator, variableGenerator(variables)],
                inlineSyntaxList: [LatexSyntax(), VariableSyntax()],
                richTextBuilder: (span) => Text.rich(span),
              ),
            ),
          );
        } else {
          return Center(child: Text('No data'));
        }
      },
    );
  }
}
