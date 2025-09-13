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
          _navIcon(
            isActive: _currentIndex == 0,
            iconPath: AppIcons.explore,
            label: 'Explore',
            isNew: false,
          ),
          _navIcon(
            isActive: _currentIndex == 1,
            iconPath: AppIcons.marketplace,
            label: 'Marketplace',
            isNew: true,
          ),
          _navIcon(
            isActive: _currentIndex == 2,
            iconPath: AppIcons.globalSearch,
            label: 'Search',
            isNew: false,
          ),

          _navIcon(
            isActive: _currentIndex == 3,
            iconPath: AppIcons.activity,
            label: 'Activity',
            isNew: false,
          ),

          _navIcon(
            isActive: _currentIndex == 4,
            iconPath: AppIcons.account,
            label: 'Profile',
            isNew: false,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _navIcon({
    required bool isActive,
    required String iconPath,
    required String label,
    required bool isNew,
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgIcon(
            path: iconPath,
            size: 24,
            color: isActive ? AppColors.primary : AppColors.grey,
          ),
          if (isNew)
            Positioned.fill(
              top: -10,
              right: -15,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 30,
                  height: 15,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "New",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      label: label,
    );
  }
}
