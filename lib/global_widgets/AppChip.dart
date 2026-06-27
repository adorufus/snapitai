import 'package:flutter/material.dart';
import 'package:snapitai/utils/app_colors.dart';

class AppChip extends StatelessWidget {
  final String? chipText;
  final Widget? child;
  final double? borderRadius;
  final double? width;
  final double? height;

  final Color? backgroundColor;
  final Color? borderColor;
  final Color? foregroundColor;

  final Function()? onClick;

  const AppChip({
    super.key,
    this.child,
    this.borderRadius,
    this.width,
    this.height,
    this.backgroundColor,
    this.borderColor,
    this.foregroundColor,
    this.chipText,
    this.onClick
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
          color: backgroundColor ?? AppColors.secondary,
          border: Border.all(color: borderColor ?? AppColors.lightPrimary)
        ),
        child: Center(
          child:
              child ??
              Text(
                chipText ?? "",
                style: TextStyle(color: foregroundColor ?? Colors.white),
              ),
        ),
      ),
    );
  }
}
