import 'package:fdu_applied_mathematics/01/eg1/eg1.dart';
import 'package:fdu_applied_mathematics/render/markdown.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  final TocController controller = TocController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("复变函数与积分变换")),
      endDrawer: Drawer(
        child: SafeArea(child: TocWidget(controller: controller)),
      ),
      body: MarkdownViewer(
        path: 'docs/01.md',
        tocController: controller,
        variables: {'eg1': const Eg1()},
      ),
    );
  }
}
