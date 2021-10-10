import 'package:flutter/material.dart';
import 'package:never_behind_keyboard/src/never_behind_source_focus_notification.dart';

class NeverBehindFocusSource extends StatefulWidget {
  final Widget child;
  NeverBehindFocusSource({Key? key, required this.child}) : super(key: key);

  @override
  _NeverBehindFocusSourceState createState() => _NeverBehindFocusSourceState();
}

class _NeverBehindFocusSourceState extends State<NeverBehindFocusSource> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      child: widget.child,
      onFocusChange: (bool hasFocus) {
        if (hasFocus) {
          NeverHideSourceNotification(hasFocus).dispatch(context);
        }
      },
    );
  }
}
