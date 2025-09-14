import 'package:flutter/material.dart';
import 'package:quroz/core/common/widgets/empty_page_mock.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Explore')),
      body: EmptyPageMock(),
    );
  }
}
