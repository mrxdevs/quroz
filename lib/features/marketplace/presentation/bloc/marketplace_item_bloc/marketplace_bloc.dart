import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quroz/core/errors/failures.dart';
import 'package:quroz/features/marketplace/domain/usecases/get_marketplace_items.dart';
import 'package:quroz/features/marketplace/presentation/bloc/marketplace_item_bloc/marketplace_event.dart';
import 'package:quroz/features/marketplace/presentation/bloc/marketplace_item_bloc/marketplace_state.dart';

class MarketplaceBloc extends Bloc<MarketplaceEvent, MarketplaceState> {
  final GetMarketplaceItems getMarketplaceItems;

  MarketplaceBloc({required this.getMarketplaceItems})
    : super(MarketplaceInitial()) {
    on<GetMarketplaceItemsEvent>(_onGetMarketplaceItems);
  }

  void _onGetMarketplaceItems(
    GetMarketplaceItemsEvent event,
    Emitter<MarketplaceState> emit,
  ) async {
    emit(MarketplaceLoading());
    final result = await getMarketplaceItems(PageParams(page: event.page));
    result.fold(
      (failure) {
        if (failure is ServerFailure) {
          emit(const MarketplaceError(message: 'Server Failure'));
        } else {
          emit(const MarketplaceError(message: 'Unknown Failure'));
        }
      },
      (items) {
        emit(
          MarketplaceLoaded(items: items, hasMore: items.isNotEmpty),
        ); // Simple check for now
      },
    );
  }
}
