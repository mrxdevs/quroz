import 'package:equatable/equatable.dart';

class MarketplaceItem extends Equatable {
  final String id;
  final String? name;
  final String? profileImage;
  final String? company;
  final String? designation;
  final bool? isHighValue;
  final String? createdAt;
  final String? createdAtDate;
  final String? description;
  final String? serviceType;
  final String? targetAudience;
  final bool? isOpen;
  final bool? isPanIndia;
  final List<String>? languages;
  final List<String>? locations;
  final bool? isDealClosed;
  final String? budget;
  final String? brand;
  final String? slug;

  const MarketplaceItem({
    required this.id,
    this.name,
    this.profileImage,
    this.company,
    this.designation,
    this.isHighValue,
    this.createdAt,
    this.createdAtDate,
    this.description,
    this.serviceType,
    this.targetAudience,
    this.isOpen,
    this.isPanIndia,
    this.languages,
    this.locations,
    this.isDealClosed,
    this.brand,
    this.slug,
    this.budget,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    profileImage,
    company,
    designation,
    isHighValue,
    createdAt,
    createdAtDate,
    description,
    serviceType,
    targetAudience,
    isOpen,
    isPanIndia,
    languages,
    locations,
    isDealClosed,
    brand,
    slug,
    budget,
  ];
}
