import 'package:flutter/material.dart';
// import 'package:uikit/src/colors.dart';
// import 'package:uikit/src/typography.dart';
import 'package:uikit/uikit.dart';

class Chips{
  final Colorss colors = Colorss();
  final Font font = Font();

  Widget primary({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: enabled ? colors.accent : colors.input_bg,
        foregroundColor: enabled ? colors.white: colors.discrp,
        minimumSize: Size(129, 48),

        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text, style: font.textRegular),
    );
  }
}