import 'package:flutter/material.dart';

class GlobalSearchPage extends StatelessWidget {
  const GlobalSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Search'),
      ),
      body: Center(
        child: Text('Global Search Page'),
      ),
    );
  }
}
