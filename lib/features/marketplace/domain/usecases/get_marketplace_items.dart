import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:quroz/core/usecase/usecase.dart';
import '../entities/marketplace_item.dart';
import '../repositories/marketplace_repository.dart';

import '../../../../core/errors/failures.dart';

class GetMarketplaceItems
    implements UseCase<List<MarketplaceItem>, PageParams> {
  final MarketplaceRepository repository;
  GetMarketplaceItems(this.repository);

  @override
  Future<Either<Failure, List<MarketplaceItem>>> call(PageParams params) async {
    return await repository.getMarketplaceItems(params.page);
  }
}

class PageParams extends Equatable {
  final int page;
  const PageParams({required this.page});

  @override
  List<Object?> get props => [page];
}
