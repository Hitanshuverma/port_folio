import 'dart:ui';
import 'package:flutter/material.dart';

class Glass extends StatelessWidget {
  const Glass({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.child,
    required this.color,
    required this.br,
  }) : super(key: key);

  final double blur;
  final double opacity;
  final Widget child;
  final Color? color;
  final double br;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(br),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: color!.withOpacity(opacity),
            border: Border.all(
              width: 0.0,
              color: Colors.transparent.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
