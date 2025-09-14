import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/images/app_images.dart';
import 'package:quroz/core/common/widgets/shimmer_container.dart'
    show ShimmerContainer;

class InfluencerCardWidgetShimmer extends StatefulWidget {
  final bool? isExpanded;
  final String? badge;

  const InfluencerCardWidgetShimmer({super.key, this.isExpanded, this.badge});

  @override
  State<InfluencerCardWidgetShimmer> createState() =>
      _InfluencerCardWidgetShimmerState();
}

class _InfluencerCardWidgetShimmerState
    extends State<InfluencerCardWidgetShimmer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13, left: 16, right: 16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        // color: AppColors.grey1,
        border: Border.all(color: AppColors.grey2, width: 1),
      ),
      child: Column(
        children: [
          //Profile Image title and verified icon UI
          SizedBox(
            height: 56,
            child: Row(
              children: [
                ShimmerContainer(
                  child: CircleAvatar(
                    radius: 28,
                    child: Image.asset(AppImages.profilePlaceholderImage),
                  ),
                ),
                const SizedBox(width: 8),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerContainer(width: 100, height: 20),
                      const SizedBox(height: 4),
                      Expanded(child: ShimmerContainer(width: 100, height: 20)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          ShimmerContainer(width: 20, height: 20),
                          const SizedBox(width: 4),
                          ShimmerContainer(width: 20, height: 20),
                          const SizedBox(width: 4),
                        ],
                      ),
                    ],
                  ),
                ),

                ShimmerContainer(width: 24, height: 24),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Looking for Description UI
          SizedBox(
            height: 28,
            child: Row(
              children: [
                ShimmerContainer(width: 24, height: 24),
                const SizedBox(width: 8),
                ShimmerContainer(width: 150, height: 20),
              ],
            ),
          ),

          //Divider
          const Divider(color: AppColors.grey2, thickness: 1),

          //Description UI
          SizedBox(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerContainer(width: 200, height: 20),
                    const SizedBox(height: 4),
                    ShimmerContainer(width: 100, height: 20),
                    const SizedBox(height: 4),
                    ShimmerContainer(width: 180, height: 20),
                    const SizedBox(height: 4),
                    ShimmerContainer(width: 80, height: 20),
                    const SizedBox(height: 4),
                    ShimmerContainer(width: 150, height: 20),
                    const SizedBox(height: 4),
                    ShimmerContainer(width: 50, height: 20),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 8),

          //Location UI
          if (widget.isExpanded ?? false)
            Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(child: ShimmerContainer(height: 30)),
                    const SizedBox(width: 8),
                    Expanded(child: ShimmerContainer(height: 30)),
                    Spacer(),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(child: ShimmerContainer(height: 30)),
                    const SizedBox(width: 8),
                    Expanded(child: ShimmerContainer(height: 30)),
                    Spacer(),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}
