import 'package:flutter/material.dart';

class Logos extends StatelessWidget {
  final double width;
  final double? height;
  final BoxFit fit;

  const Logos({
    super.key,
    this.width = 150,
    this.height,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'packages/uikit/assets/logo/logo.png',
      width: width,
      height: height,
      fit: fit,
    );
  }
}