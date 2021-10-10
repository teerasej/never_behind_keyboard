import 'package:flutter/material.dart';
import 'package:never_behind_keyboard/src/never_behind_keyboard_area.dart';

class NeverBehindBottom extends StatelessWidget {
  const NeverBehindBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.visitAncestorElements((element) {
      var parentWidget = element.widget;

      if (parentWidget is NeverBehindKeyboardArea) {
        parentWidget.bottom = this;
        return false;
      }

      return true;
    });

    return Container();
  }
}
