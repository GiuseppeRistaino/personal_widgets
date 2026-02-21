import 'package:flutter/material.dart';

class CoverBackground extends StatelessWidget {
  final ImageProvider image;
  final double overlayOpacity;
  final Color overlayColor;

  const CoverBackground({
    super.key,
    required this.image,
    this.overlayOpacity = 0.4,
    this.overlayColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: overlayColor.withValues(alpha: overlayOpacity),
        ),
      ],
    );
  }
}