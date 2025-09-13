import 'package:flutter/material.dart';
import 'package:quroz/core/assets/colors/app_colors.dart';
import 'package:quroz/core/assets/icons/app_icons.dart';
import 'package:quroz/core/common/widgets/svg_icon.dart';
import 'package:quroz/features/account/presentation/pages/account_page.dart';
import 'package:quroz/features/activity/presentation/pages/activity_page.dart';
import 'package:quroz/features/explore/presentation/pages/explore_page.dart';
import 'package:quroz/features/global_search/presentation/pages/global_search_page.dart';
import 'package:quroz/features/marketplace/presentation/pages/marketplace_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // List of pages on Bottom Navigation
  final List<Widget> _children = [
    const ExplorePage(),
    const MarketplacePage(),
    const GlobalSearchPage(),
    const ActivityPage(),
    const AccountPage(),
    // ... add other pages here
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        elevation: 0,
        selectedItemColor: AppColors.grey,
        unselectedItemColor: AppColors.grey,

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgIcon(
              path: AppIcons.explore,
              size: 24,
              color: _currentIndex == 0 ? AppColors.primary : AppColors.grey,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              path: AppIcons.marketplace,
              size: 24,
              color: _currentIndex == 1 ? AppColors.primary : AppColors.grey,
            ),
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              path: AppIcons.globalSearch,
              size: 24,
              color: _currentIndex == 2 ? AppColors.primary : AppColors.grey,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              path: AppIcons.activity,
              size: 24,
              color: _currentIndex == 3 ? AppColors.primary : AppColors.grey,
            ),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(
              path: AppIcons.account,
              size: 24,
              color: _currentIndex == 4 ? AppColors.primary : AppColors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
