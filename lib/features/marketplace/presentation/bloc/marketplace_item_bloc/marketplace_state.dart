import 'package:equatable/equatable.dart';
import 'package:quroz/features/marketplace/domain/entities/marketplace_item.dart';

abstract class MarketplaceState extends Equatable {
  const MarketplaceState();

  @override
  List<Object> get props => [];
}

class MarketplaceInitial extends MarketplaceState {}

class MarketplaceLoading extends MarketplaceState {}

class MarketplaceLoaded extends MarketplaceState {
  final List<MarketplaceItem> items;
  final bool hasMore;

  const MarketplaceLoaded({required this.items, required this.hasMore});

  @override
  List<Object> get props => [items, hasMore];
}

class MarketplaceError extends MarketplaceState {
  final String message;

  const MarketplaceError({required this.message});

  @override
  List<Object> get props => [message];
}
