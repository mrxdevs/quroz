import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/assets/images/app_images.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/marketplace/data/models/marketplace_item_model.dart';

class InfluencerCardWidget extends StatefulWidget {
  final bool? isExpanded;
  final String? badge;
  final MarketplaceItemModel marketplaceItem;

  const InfluencerCardWidget({
    super.key,
    this.isExpanded,
    this.badge,
    required this.marketplaceItem,
  });

  @override
  State<InfluencerCardWidget> createState() => _InfluencerCardWidgetState();
}

class _InfluencerCardWidgetState extends State<InfluencerCardWidget> {
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
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Profile Image title and verified icon UI
              SizedBox(
                height: 56,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      child: Image.asset(AppImages.profilePlaceholderImage),
                    ),
                    const SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.marketplaceItem.name ?? "Unnamed",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${widget.marketplaceItem.designation ?? "Employee"} at ${widget.marketplaceItem.company ?? "Some Company"}",
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SvgIcon(
                                  path: AppIcons.clockIcon,
                                  size: 14,
                                  color: AppColors.grey,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                widget.marketplaceItem.createdAt ?? "",
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
                    ),

                    SvgIcon(
                      path: AppIcons.arrowRightIcon,
                      size: 24,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // Looking for Description UI
              SizedBox(
                child: Row(
                  children: [
                    SvgIcon(path: AppIcons.influencerIcon, size: 24),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        widget.marketplaceItem.slug ?? "",
                        maxLines: 3,
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Divider
              const Divider(color: AppColors.grey2, thickness: 1),

              //Description UI
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.marketplaceItem.budget != null)
                      Text(
                        "Budget: ${widget.marketplaceItem.budget}",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    if (widget.marketplaceItem.brand != null)
                      Text(
                        "Brand: ${widget.marketplaceItem.brand}",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    if (widget.marketplaceItem.locations != null &&
                        widget.marketplaceItem.locations!.isNotEmpty)
                      Text(
                        "Location: ${widget.marketplaceItem.locations!.join(", ")}",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    if (widget.marketplaceItem.serviceType != null)
                      Text(
                        "Type: ${widget.marketplaceItem.serviceType}",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    if (widget.marketplaceItem.languages != null &&
                        widget.marketplaceItem.languages!.isNotEmpty)
                      Text(
                        "Language: ${widget.marketplaceItem.languages!.join(", ")}",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    if (widget.marketplaceItem.description != null)
                      Text(
                        widget.marketplaceItem.description ?? "",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
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
                                widget.marketplaceItem.locations?.join(", ") ??
                                    "N/A",
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              if ((widget.marketplaceItem.locations?.length ??
                                      0) >
                                  3)
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
          if (widget.marketplaceItem.isHighValue != null)
            Positioned(
              top: -24,
              right: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.badge1,
                ),
                child: Row(
                  children: [
                    SvgIcon(
                      path: AppIcons.highValueIcon,
                      size: 14,
                      color: AppColors.white,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "High Value".toUpperCase(),
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
