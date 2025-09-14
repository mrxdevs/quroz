import 'package:flutter/material.dart';
import 'package:quroz/core/common/widgets/no_data_widget.dart';
import 'package:quroz/features/marketplace/presentation/widget/influencer_card_shimmer.dart';

class EmptyPageMock extends StatefulWidget {
  const EmptyPageMock({super.key});

  @override
  State<EmptyPageMock> createState() => _EmptyPageMockState();
}

class _EmptyPageMockState extends State<EmptyPageMock> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _toggleLoading(false);
  }

  _toggleLoading(bool isLoading) async {
    await Future.delayed(Duration(seconds: 2));
    if (mounted) {
      setState(() {
        _isLoading = isLoading;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!_isLoading) Center(child: const NoDataWidget()),

          if (_isLoading)
            ...List.generate(
              3,
              (index) => const InfluencerCardWidgetShimmer(isExpanded: true),
            ),
        ],
      ),
    );
  }
}
