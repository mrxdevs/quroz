import 'package:dartz/dartz.dart';
import 'package:quroz/core/errors/exceptions.dart';
import 'package:quroz/core/errors/failures.dart';
import 'package:quroz/features/marketplace/data/datasources/marketplace_remote_data_source.dart';
import 'package:quroz/features/marketplace/domain/entities/marketplace_item.dart';
import 'package:quroz/features/marketplace/domain/entities/post_details.dart';
import 'package:quroz/features/marketplace/domain/repositories/marketplace_repository.dart';

class MarketplaceRepositoryImpl implements MarketplaceRepository {
  final MarketplaceRemoteDataSource remoteDataSource;

  MarketplaceRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<MarketplaceItem>>> getMarketplaceItems(
    int page,
  ) async {
    try {
      final items = await remoteDataSource.getMarketplaceItems(page);
      return Right(items);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, PostDetails>> getPostDetails(String idHash) async {
    try {
      final details = await remoteDataSource.getPostDetails(idHash);
      return Right(details);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
