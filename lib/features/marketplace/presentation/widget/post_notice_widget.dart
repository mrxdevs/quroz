import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';

class PostNoticeWidget extends StatelessWidget {
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  const PostNoticeWidget({super.key, this.onEdit, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 0,
            left: 20,
            right: 20,
          ),
          height: 108,
          alignment: Alignment.bottomCenter,

          decoration: BoxDecoration(
            color: AppColors.white,

            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, -2),
              ),
            ],
          ),

          child: Column(
            children: [
              Row(
                children: [
                  SvgIcon(
                    path: AppIcons.clockIcon,
                    size: 16,
                    color: Colors.purple.shade300,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Your post has will be expired on 26 July",
                    style: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: onEdit,
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.white,
                          border: Border.all(
                            color: AppColors.primary,
                            width: 2,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Edit",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: onDelete,
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.primary,
                        ),
                        child: Center(
                          child: Text(
                            "Delete",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
