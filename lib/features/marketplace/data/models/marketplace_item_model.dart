import '../../domain/entities/marketplace_item.dart';

class MarketplaceItemModel extends MarketplaceItem {
  const MarketplaceItemModel({
    required super.id,
    required super.title,
    required super.imageUrl,
    required super.budget,
  });

  factory MarketplaceItemModel.fromJson(Map<String, dynamic> json) {
    return MarketplaceItemModel(
      id: json['id_hash'] ?? '',
      title: json['title'] ?? 'No Title',
      imageUrl: json['media_url'] ?? '',
      budget: json['budget']?.toString() ?? 'N/A',
    );
  }
}
