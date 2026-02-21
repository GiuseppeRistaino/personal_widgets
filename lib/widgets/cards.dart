import 'dart:ui';
import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  final Widget child;

  final double? width;
  final double? height;

  final double borderRadius;
  final double sigmaX;
  final double sigmaY;

  final EdgeInsets padding;
  final Alignment alignment;

  final bool enableBlur;

  final Color baseColor;
  final double baseOpacity;

  final Gradient? backgroundGradient;
  final Gradient? borderGradient;

  final double borderWidth;

  final List<BoxShadow>? boxShadow;

  final VoidCallback? onTap;

  const GlassCard({
    super.key,
    required this.child,
    this.width = 320,
    this.height,
    this.borderRadius = 30,
    this.sigmaX = 15,
    this.sigmaY = 15,
    this.padding = const EdgeInsets.all(25),
    this.alignment = Alignment.center,
    this.enableBlur = true,
    this.baseColor = Colors.white,
    this.baseOpacity = 0.15,
    this.backgroundGradient,
    this.borderGradient,
    this.borderWidth = 1.5,
    this.boxShadow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadiusValue = BorderRadius.circular(borderRadius);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadiusValue,
          gradient: borderGradient,
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                )
              ],
        ),
        child: Padding(
          padding: EdgeInsets.all(borderWidth),
          child: ClipRRect(
            borderRadius: borderRadiusValue,
            child: BackdropFilter(
              filter: enableBlur
                  ? ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY)
                  : ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                alignment: alignment,
                padding: padding,
                decoration: BoxDecoration(
                  borderRadius: borderRadiusValue,
                  gradient: backgroundGradient,
                  color: backgroundGradient == null
                      ? baseColor.withValues(alpha: baseOpacity)
                      : null,
                ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}