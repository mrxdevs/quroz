import 'package:flutter/material.dart';

class ImageIconWidget extends StatelessWidget {
  final String path;
  final double? size;
  final Color? color;
  final double? borderRadius;

  const ImageIconWidget({
    super.key,
    required this.path,
    this.size,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      child: Image.asset(path, height: size, width: size, color: color),
    );
  }
}
