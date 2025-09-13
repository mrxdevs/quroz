import 'package:equatable/equatable.dart';

abstract class MarketplaceEvent extends Equatable {
  const MarketplaceEvent();

  @override
  List<Object> get props => [];
}

class GetMarketplaceItemsEvent extends MarketplaceEvent {
  final int page;
  const GetMarketplaceItemsEvent({required this.page});
}
