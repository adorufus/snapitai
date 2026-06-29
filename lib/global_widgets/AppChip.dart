import 'package:flutter/material.dart';
import 'package:snapitai/utils/app_colors.dart';

class AppChip extends StatelessWidget {
  final String? chipText;
  final Widget? child;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? fontSize;

  final Color? backgroundColor;
  final Color? borderColor;
  final Color? foregroundColor;

  final Function()? onClick;

  final bool isUsingPadding;

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
    this.onClick,
    this.fontSize,
    this.isUsingPadding = true
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: height,
        width: width,
        padding: !isUsingPadding ? null : EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 15),
          color: backgroundColor ?? AppColors.secondary,
          border: Border.all(color: borderColor ?? AppColors.lightPrimary),
        ),
        child: Center(
          child:
              child ??
              Text(
                chipText ?? "",
                style: TextStyle(
                  color: foregroundColor ?? Colors.white,
                  fontSize: fontSize ?? 12,
                ),
              ),
        ),
      ),
    );
  }
}
