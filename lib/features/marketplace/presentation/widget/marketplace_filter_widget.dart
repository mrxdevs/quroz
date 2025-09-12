import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart' show AppColors;

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
                            : AppColors.grey2,
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
