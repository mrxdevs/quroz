import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/common/widgets/no_data_widget.dart';

import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/marketplace/data/datasources/marketplace_remote_data_source.dart';
import 'package:quroz/features/marketplace/data/models/marketplace_item_model.dart';
import 'package:quroz/features/marketplace/presentation/pages/influencer_details_page.dart';
import 'package:quroz/features/marketplace/presentation/widget/influencer_card_shimmer.dart';
import 'package:quroz/features/marketplace/presentation/widget/influencer_card_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/marketplace_filter_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/marketplace_search_widget.dart';

class MarketplacePage extends StatefulWidget {
  const MarketplacePage({super.key});

  @override
  State<MarketplacePage> createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  List<MarketplaceItemModel>? marketplaceItems;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  //Load Market place data from loading
  _loadData() {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }
    MarketplaceRemoteDataSourceImplMock().getMarketplaceItems(1).then((value) {
      if (mounted) {
        setState(() {
          marketplaceItems = value;
          isLoading = false;
        });
      }
    });
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

            ...marketplaceItems?.map(
                  (item) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InfluencerDetailsPage(),
                        ),
                      );
                    },
                    child: InfluencerCardWidget(
                      isExpanded: true,
                      badge: "Highly Value",
                      marketplaceItem: item,
                    ),
                  ),
                ) ??
                [if (!isLoading) NoDataWidget(msg: "Oh!, No Post Found")],

            if (isLoading)
              ...List.generate(
                3,
                (index) => const InfluencerCardWidgetShimmer(isExpanded: true),
              ),
          ],
        ),
      ),
    );
  }
}
