import 'package:flutter/material.dart';
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
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
