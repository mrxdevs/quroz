import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/common/methods/show_toast.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/marketplace/presentation/widget/influencer_details_card_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/post_notice_widget.dart';

class InfluencerDetailsPage extends StatefulWidget {
  const InfluencerDetailsPage({super.key});

  @override
  State<InfluencerDetailsPage> createState() => _InfluencerDetailsPageState();
}

class _InfluencerDetailsPageState extends State<InfluencerDetailsPage> {
  bool isShowNotice = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgIcon(
            path: AppIcons.arrowBackIcon,
            size: 24,
            color: AppColors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          Row(
            children: [
              SvgIcon(
                path: AppIcons.deleteIcon,
                size: 24,
                color: AppColors.primary,
              ),
              const SizedBox(width: 16),
              Container(
                width: 32,
                height: 28,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.themeGradient1,
                      AppColors.themeGradient2,
                    ],
                  ),
                ),
                child: SvgIcon(
                  path: AppIcons.shareIcon,
                  size: 16,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const InfluencerDetailsCardWidget(isExpanded: true),
                const SizedBox(height: 200),
              ],
            ),
          ),
          if (isShowNotice)
            PostNoticeWidget(
              onEdit: () {
                setState(() {
                  isShowNotice = false;
                  showSuccessToast(
                    context,
                    "Coming Soon!",
                    "This feature will be available soon",
                  );
                });
              },
              onDelete: () {
                setState(() {
                  isShowNotice = false;
                  showSuccessToast(
                    context,
                    "Post deleted successfully",
                    "The post will no longer be visible to your followers",
                  );
                });
              },
            ),
        ],
      ),
    );
  }
}
