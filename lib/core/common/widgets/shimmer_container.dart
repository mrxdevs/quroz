import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;

  const ShimmerContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.grey2,
      highlightColor: AppColors.grey1,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.grey2,
          borderRadius: borderRadius ?? BorderRadius.circular(6),
        ),
        child: child,
      ),
    );
  }
}
