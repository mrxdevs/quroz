import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/images/app_images.dart';

class MarketplaceSearchWidget extends StatelessWidget {
  const MarketplaceSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey1, width: 2),
        borderRadius: BorderRadius.circular(100),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: CircleAvatar(
                radius: 16,

                child: Image.asset(AppImages.searchPlaceholderImage),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  textAlign: TextAlign.start,
                  cursorColor: AppColors.primary,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),

                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),

                    border: InputBorder.none,
                    hintText: "Type your requirement here . . .",
                    hintStyle: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
