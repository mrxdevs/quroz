import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';

class NoDataWidget extends StatelessWidget {
  final String? msg;

  const NoDataWidget({super.key, this.msg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text(
        msg ?? "Oh no! No data found",
        style: TextStyle(
          color: AppColors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
