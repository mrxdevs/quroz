import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/assets/images/app_images.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';

class InfluencerDetailsCardWidget extends StatefulWidget {
  final bool? isExpanded;
  final String? badge;

  const InfluencerDetailsCardWidget({super.key, this.isExpanded, this.badge});

  @override
  State<InfluencerDetailsCardWidget> createState() =>
      _InfluencerDetailsCardWidgetState();
}

class _InfluencerDetailsCardWidgetState
    extends State<InfluencerDetailsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Profile Image title and verified icon UI
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),

            decoration: BoxDecoration(color: AppColors.grey4),
            height: 76,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.asset(AppImages.profilePlaceholderImage),
                ),
                const SizedBox(width: 8),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Angel Rosser",
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Sales Manager at Meesho private limited",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SvgIcon(
                          path: AppIcons.meshooIcon,
                          size: 14,
                          color: AppColors.grey,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "Meshoo",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Looking for Description UI
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // color: AppColors.grey1,
              // border: Border.all(color: AppColors.grey2, width: 1),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Looking for ",
                        style: TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),

                      Row(
                        children: [
                          SvgIcon(path: AppIcons.influencerIcon, size: 24),
                          const SizedBox(width: 8),
                          Text(
                            "Looking for Influencer marketing agency",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Divider
                const Divider(color: AppColors.grey2, thickness: 1),
                //Description UI
                SizedBox(
                  child: Text(
                    """
          Budget: ₹1,50,000 Brand: WanderFit Luggage Location: Goa & Kerala Type: Lifestyle & Adventure travel content with a focus on young, urban audiences Language: English and Hindi Looking for a travel influencer who can showcase our premium luggage line in scenic beach and nature destinations. Content should emphasize ease of travel and durability of the product.""",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                //Location UI
                if (widget.isExpanded ?? false)
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),

                              color: AppColors.grey1,
                            ),
                            height: 28,
                            child: Row(
                              children: [
                                SvgIcon(path: AppIcons.locationIcon, size: 14),
                                const SizedBox(width: 8),
                                Text(
                                  [
                                    "Banguluru, Taminadu, Kerala, Mumbai",
                                  ].join(", "),
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),

                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "+1more",

                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.grey,
                                      decorationThickness: 1,
                                      color: AppColors.grey,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),

                              color: AppColors.grey1,
                            ),
                            height: 28,
                            child: Row(
                              children: [
                                SvgIcon(path: AppIcons.instagramIcon, size: 14),
                                const SizedBox(width: 8),
                                Text(
                                  "10k - 100k",
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),

                              color: AppColors.grey1,
                            ),
                            height: 28,
                            child: Row(
                              children: [
                                SvgIcon(path: AppIcons.lifestyleIcon, size: 14),
                                const SizedBox(width: 8),
                                Text(
                                  ["Lifestyle", "Fashion"].join(", "),
                                  style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
