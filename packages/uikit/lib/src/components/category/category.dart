import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Menu extends StatelessWidget {
  final String text;
  final bool isActive;

  const Menu({
    super.key,
    required this.text,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? ui.color.accent : ui.color.input_bg,
          foregroundColor: isActive ? ui.color.white : ui.color.discrp,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: Size(66, 48),
        ),
        child: Text(
          text,
          style: ui.font.textRegular,
        ),
      ),
    );
  }
}