import 'package:flutter/material.dart';
import 'package:uikit/src/typography.dart';
import 'package:uikit/src/colors.dart';

class BigButtons {
  final Colorss colors = Colorss();
  final Font font = Font();


  Widget primary({
    required String text,
    VoidCallback? onPressed,
    bool enabled=true
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: enabled ? colors.accent : colors.accentinactive,
        foregroundColor: colors.white,
        minimumSize: Size(335, 56),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text, style: font.title3Semibold),
    );
  }

  Widget NullElevatedButton({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.white,
        foregroundColor: colors.accent,
        minimumSize: Size(335, 56),
        //fixedSize: Size(96, 40),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: colors.accent),
        ),
      ),
      child: Text(text, style: font.title3Semibold),
    );
  }

  Widget NonActive({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.input_bg,
        foregroundColor: colors.black,
        minimumSize: Size(335, 56),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text, style: font.title3Semibold),
    );
  }
}
