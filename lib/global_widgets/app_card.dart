import 'package:flutter/widgets.dart';
import 'package:snapitai/utils/app_colors.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const AppCard({super.key, required this.child, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.neutral,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.lightPrimary),
      ),
      child: child,
    );
  }
}
