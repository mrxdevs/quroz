import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';

class HighlightCardWidget extends StatelessWidget {
  final String title;
  final String description;

  const HighlightCardWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.darkGrey,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: AppColors.grey6,
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
