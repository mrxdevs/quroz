import 'package:equatable/equatable.dart';

class MarketplaceItem extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final String budget;

  const MarketplaceItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.budget,
  });

  @override
  List<Object?> get props => [id, title, imageUrl, budget];
}
