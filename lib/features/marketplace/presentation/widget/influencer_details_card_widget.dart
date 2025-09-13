import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/assets/images/app_images.dart';
import 'package:quroz/core/common/widgets/image_icon.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/marketplace/presentation/widget/flow_highlight_card_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/highlight_card_widget.dart'
    show HighlightCardWidget;

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //Profile Image title and verified icon UI
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),

            decoration: BoxDecoration(color: AppColors.grey1),
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
                    Row(
                      children: [
                        Text(
                          "Angel Rosser",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 4),
                        ImageIconWidget(
                          path: AppIcons.linkedinIconPng,
                          size: 12,
                          borderRadius: 1,
                        ),
                        const SizedBox(width: 4),
                        SvgIcon(path: AppIcons.verifiedIcon, size: 12),
                        const SizedBox(width: 150),

                        Text(
                          "1d ago",
                          style: TextStyle(
                            color: AppColors.grey5,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Highlights",
                      style: TextStyle(
                        color: AppColors.grey6,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
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
                              SvgIcon(path: AppIcons.rupeeIcon, size: 14),
                              const SizedBox(width: 8),
                              Text(
                                "Budget: 1,45,000",
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
                              SvgIcon(
                                path: AppIcons.announcementIcon,
                                size: 14,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "Brand: Swiggy",
                                style: TextStyle(
                                  color: AppColors.grey5,
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
                const SizedBox(height: 8),

                //Description UI
                SizedBox(
                  child: Text(
                    """Budget: ₹1,50,000 Brand: WanderFit Luggage Location: Goa & Kerala Type: Lifestyle & Adventure travel content with a focus on young, urban audiences Language: English and Hindi Looking for a travel influencer who can showcase our premium luggage line in scenic beach and nature destinations. Content should emphasize ease of travel and durability of the product.""",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                const SizedBox(height: 12),
                //Share UI
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green.shade100,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIconWidget(
                              path: AppIcons.whatsappIconPng,
                              size: 16,
                              borderRadius: 5,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Share via WhatsApp",
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue.shade100,
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIconWidget(
                              path: AppIcons.linkedinIconPng,
                              size: 16,
                              borderRadius: 5,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Share via LinkedIn",
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                //Key Highlights UI
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      "Highlights",
                      style: TextStyle(
                        color: AppColors.grey6,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      children: [
                        HighlightCardWidget(
                          title: "Category",
                          description: "Lifestyle, Fashion",
                        ),
                        HighlightCardWidget(
                          title: "Platform",
                          description: "Instagram, Youtube",
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        HighlightCardWidget(
                          title: "Language",
                          description:
                              "Hindi, Kannada, Malayalam, Tamil & Telugu",
                        ),
                        HighlightCardWidget(
                          title: "Location",
                          description:
                              "Bangalore, Tamilnadu, Kerala & GoaBangalore, Tamilnadu, Kerala & GoaBangalore",
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        HighlightCardWidget(
                          title: "Required count",
                          description: "15 - 20",
                        ),
                        HighlightCardWidget(
                          title: "Our Budget",
                          description: "₹1,45,000",
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Row(
                      children: [
                        HighlightCardWidget(
                          title: "Brand collab with",
                          description: "Swiggy",
                        ),
                        FollowHighlightCardWidget(
                          title: "Required followers",
                          description1: "500k -1M+",
                          description2: "500k -1M+",
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
