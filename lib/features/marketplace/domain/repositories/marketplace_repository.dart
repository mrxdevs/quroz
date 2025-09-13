import 'package:dartz/dartz.dart' show Either;

import '../entities/marketplace_item.dart';
import '../entities/post_details.dart';
import '../../../../core/errors/failures.dart';

abstract class MarketplaceRepository {
  Future<Either<Failure, List<MarketplaceItem>>> getMarketplaceItems(int page);
  Future<Either<Failure, PostDetails>> getPostDetails(String idHash);
}
