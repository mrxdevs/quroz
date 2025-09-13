import '../../domain/entities/marketplace_item.dart';

class MarketplaceItemModel extends MarketplaceItem {
  const MarketplaceItemModel({
    required super.id,
    super.name,
    super.profileImage,
    super.company,
    super.designation,
    super.isHighValue,
    super.createdAt,
    super.createdAtDate,
    super.description,
    super.serviceType,
    super.targetAudience,
    super.isOpen,
    super.isPanIndia,
    super.languages,
    super.locations,
    super.isDealClosed,
    super.brand,
    super.slug,
    super.budget,
  });

  factory MarketplaceItemModel.fromJson(Map<String, dynamic> json) {
    return MarketplaceItemModel(
      id: json['id_hash'],
      name: json['user_details']['name'],
      profileImage: json['user_details']['profile_image'],
      company: json['user_details']['company'],
      designation: json['user_details']['designation'],
      isHighValue: json['is_high_value'],
      createdAt: json['created_at'],
      createdAtDate: json['created_at_date'],
      description: json['description'],
      serviceType: json['service_type'],
      targetAudience: json['target_audience'],
      isOpen: json['is_open'],
      isPanIndia: json['is_pan_india'],
      languages: json['languages'],
      locations: json['locations'],
      isDealClosed: json['is_deal_closed'],
      brand: json['brand'],
      slug: json['slug'],
      budget: json['budget'],
    );
  }

  @override
  String toString() {
    return 'MarketplaceItemModel(id: $id, name: $name, profileImage: $profileImage, company: $company, designation: $designation, isHighValue: $isHighValue, createdAt: $createdAt, createdAtDate: $createdAtDate, description: $description, serviceType: $serviceType, targetAudience: $targetAudience, isOpen: $isOpen, isPanIndia: $isPanIndia, languages: $languages, locations: $locations, isDealClosed: $isDealClosed, brand: $brand, slug: $slug, budget: $budget)';
  }
}
