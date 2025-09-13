import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';

import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/marketplace/presentation/pages/influencer_details_page.dart';
import 'package:quroz/features/marketplace/presentation/widget/influencer_card_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/marketplace_filter_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/marketplace_search_widget.dart';

class MarketplacePage extends StatefulWidget {
  const MarketplacePage({super.key});

  @override
  State<MarketplacePage> createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            MarketplaceSearchWidget(),
            MarketplaceFilterWidget(),

            ...List.generate(
              10,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InfluencerDetailsPage(),
                    ),
                  );
                },
                child: InfluencerCardWidget(
                  isExpanded: true,
                  badge: "Highly Value",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
