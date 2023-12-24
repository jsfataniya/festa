import 'package:flutter/material.dart';

class CommonBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final double? borderRadius;
  final BoxBorder? border;

  const CommonBox({
    required this.child,
    this.margin,
    this.padding,
    this.color,
    this.borderRadius,
    this.border,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: border,
      ),
      child: child,
    );
  }
}
