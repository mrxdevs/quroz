import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quroz/features/marketplace/presentation/pages/influencer_details_page.dart';
import 'package:quroz/features/marketplace/presentation/pages/marketplace_page.dart';
import '../pages/home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String marketplace = '/marketplace';
  static const String postDetails = '/marketplace/post-details';
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: AppRoutes.marketplace,
      builder: (BuildContext context, GoRouterState state) {
        return const MarketplacePage();
      },
    ),
    GoRoute(
      path: AppRoutes.postDetails,
      builder: (BuildContext context, GoRouterState state) {
        return InfluencerDetailsPage();
      },
    ),
  ],
);
