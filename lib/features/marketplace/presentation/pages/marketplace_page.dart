import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';

import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/marketplace/presentation/widget/marketplace_search_widget.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [AppColors.themeGradient1, AppColors.themeGradient2],
            ),
          ),
        ),
        title: Text(
          "Marketplace",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          Row(
            children: [
              SvgIcon(
                path: AppIcons.hamburgerIcon,
                size: 24,
                color: AppColors.white,
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
      body: Column(
        children: [MarketplaceSearchWidget(), MarketplaceFilterWidget()],
      ),
    );
  }
}

class MarketplaceFilterWidget extends StatefulWidget {
  const MarketplaceFilterWidget({super.key});

  @override
  State<MarketplaceFilterWidget> createState() =>
      _MarketplaceFilterWidgetState();
}

class _MarketplaceFilterWidgetState extends State<MarketplaceFilterWidget> {
  int selectedIndex = 0;
  List<String> filters = [
    "For You",
    "Recent",
    "My Requests",
    "Top Story",
    "Verified",
    "Liked",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.builder(
        itemCount: filters.length,
        scrollDirection: Axis.horizontal,

        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 36,
                margin: EdgeInsets.only(
                  left: index == 0 ? 16 : 8,
                  right: index == filters.length - 1 ? 16 : 0,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color:
                        index == selectedIndex
                            ? AppColors.primary
                            : AppColors.grey,
                    width: 1,
                  ),
                  color:
                      selectedIndex == index
                          ? AppColors.primary.withValues(alpha: 0.1)
                          : null,
                ),
                child: Center(
                  child: Text(
                    filters[index],
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
