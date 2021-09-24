import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LayoutUtils {
  static Widget iconText(Icon iconWidget, Text textWidget) {
    return HStack([
      iconWidget,
      const SizedBox(
        width: 5,
      ),
      textWidget
    ]);
  }
}
