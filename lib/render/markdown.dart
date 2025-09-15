import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markdown_widget/markdown_widget.dart';

import 'latex.dart';
import 'code_wrapper.dart';

class MarkdownViewer extends StatelessWidget {
  final String path;
  const MarkdownViewer({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Markdown Content')),
      body: FutureBuilder<String>(
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
                config: MarkdownConfig.defaultConfig.copy(
                  configs: [PreConfig().copy(wrapper: codeWrapper)],
                ),
                markdownGenerator: MarkdownGenerator(
                  generators: [latexGenerator],
                  inlineSyntaxList: [LatexSyntax()],
                  richTextBuilder: (span) => Text.rich(span),
                ),
              ),
            );
          } else {
            return Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
