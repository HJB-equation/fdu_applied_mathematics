import 'package:fdu_applied_mathematics/01/eg1.dart';
import 'package:fdu_applied_mathematics/render/markdown.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class Page extends StatelessWidget {
  const Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MarkdownViewer(path: 'docs/01.md'));
  }
}
