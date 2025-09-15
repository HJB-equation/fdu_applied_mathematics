import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'latex.dart';

Widget codeWrapper(Widget child, String code, String language) {
  return switch (language) {
    'math' => LatexPreview.block(code),
    _ => CodeWrapperWidget(child, code, language),
  };
}

class CodeWrapperWidget extends StatefulWidget {
  final Widget child;
  final String text;
  final String language;

  const CodeWrapperWidget(this.child, this.text, this.language, {super.key});

  @override
  State<CodeWrapperWidget> createState() => _PreWrapperState();
}

class _PreWrapperState extends State<CodeWrapperWidget> {
  late Widget _switchWidget;
  bool hasCopied = false;

  @override
  void initState() {
    super.initState();
    _switchWidget = Icon(Icons.copy_rounded, key: UniqueKey());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Stack(
      children: [
        widget.child,
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.language.isNotEmpty)
                  SelectionContainer.disabled(
                    child: Container(
                      margin: EdgeInsets.only(right: 2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 0.5,
                          color: isDark ? Colors.white : Colors.black,
                        ),
                      ),
                      child: Text(widget.language),
                    ),
                  ),
                InkWell(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 200),
                    child: _switchWidget,
                  ),
                  onTap: () async {
                    if (hasCopied) return;
                    await Clipboard.setData(ClipboardData(text: widget.text));
                    _switchWidget = Icon(Icons.check, key: UniqueKey());
                    refresh();
                    Future.delayed(Duration(seconds: 2), () {
                      hasCopied = false;
                      _switchWidget = Icon(
                        Icons.copy_rounded,
                        key: UniqueKey(),
                      );
                      refresh();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void refresh() {
    if (mounted) setState(() {});
  }
}
