import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';

class FollowHighlightCardWidget extends StatelessWidget {
  final String title;
  final String description1;
  final String description2;

  const FollowHighlightCardWidget({
    super.key,
    required this.title,
    required this.description1,
    required this.description2,
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
          Row(
            children: [
              SvgIcon(
                path: AppIcons.instagramIcon,
                size: 14,
                color: AppColors.grey4,
              ),
              const SizedBox(width: 8),
              Text(
                description1,
                style: TextStyle(
                  color: AppColors.grey6,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SvgIcon(
                path: AppIcons.playIcon,
                size: 14,
                color: AppColors.grey4,
              ),
              const SizedBox(width: 8),
              Text(
                description1,
                style: TextStyle(
                  color: AppColors.grey6,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
