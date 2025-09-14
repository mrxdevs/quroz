import 'package:flutter/material.dart';
import 'package:quroz/core/common/widgets/empty_page_mock.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Account')),
      body: EmptyPageMock(),
    );
  }
}
