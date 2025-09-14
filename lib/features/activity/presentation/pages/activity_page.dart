import 'package:flutter/material.dart';
import 'package:quroz/core/common/widgets/empty_page_mock.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Activity')),
      body: EmptyPageMock(),
    );
  }
}
