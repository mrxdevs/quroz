import 'package:dio/dio.dart';

import 'package:quroz/features/marketplace/data/models/marketplace_item_model.dart';
import 'package:quroz/features/marketplace/data/models/page_details_model.dart';
import '../../../../core/errors/exceptions.dart';

abstract class MarketplaceRemoteDataSource {
  Future<List<MarketplaceItemModel>> getMarketplaceItems(int page);
  Future<PostDetailsModel> getPostDetails(String idHash);
}

class MarketplaceRemoteDataSourceImpl implements MarketplaceRemoteDataSource {
  final Dio dio;

  MarketplaceRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<MarketplaceItemModel>> getMarketplaceItems(int page) async {
    try {
      final response = await dio.get(
        '/interview.mplist',
        queryParameters: {'page': page},
      );

      // Assuming the API response has a 'data' field that is a list of items
      final List<dynamic> jsonList = response.data['data'] as List;

      // Map the dynamic list to a list of MarketplaceItemModel
      final items =
          jsonList
              .map(
                (json) =>
                    MarketplaceItemModel.fromJson(json as Map<String, dynamic>),
              )
              .toList();

      return items;
    } on DioException catch (e) {
      // Catch Dio-specific errors (e.g., network issues, server errors)
      if (e.response?.statusCode == 404) {
        throw NotFoundException();
      } else {
        throw ServerException();
      }
    } catch (e) {
      // Catch all other exceptions, e.g., parsing errors
      throw ServerException();
    }
  }

  @override
  Future<PostDetailsModel> getPostDetails(String idHash) async {
    try {
      final response = await dio.get(
        '/interview.mplist',
        queryParameters: {'id_hash': idHash},
      );

      // Assuming the API response returns a single JSON object for the details
      final json = response.data as Map<String, dynamic>;

      // Map the JSON to a PostDetailsModel
      final details = PostDetailsModel.fromJson(json);

      return details;
    } on DioException catch (e) {
      // Catch Dio-specific errors
      if (e.response?.statusCode == 404) {
        throw NotFoundException();
      } else {
        throw ServerException();
      }
    } catch (e) {
      // Catch all other exceptions, e.g., parsing errors
      throw ServerException();
    }
  }
}

class MarketplaceRemoteDataSourceImplMock
    implements MarketplaceRemoteDataSource {
  final Dio dio;

  MarketplaceRemoteDataSourceImplMock({required this.dio});

  @override
  Future<List<MarketplaceItemModel>> getMarketplaceItems(int page) async {
    try {
      final response = await dio.get(
        '/interview.mplist',
        queryParameters: {'page': page},
      );

      // Assuming the API response has a 'data' field that is a list of items
      
      final List<dynamic> jsonList = response.data['data'] as List;

      // Map the dynamic list to a list of MarketplaceItemModel
      final items =
          jsonList
              .map(
                (json) =>
                    MarketplaceItemModel.fromJson(json as Map<String, dynamic>),
              )
              .toList();

      return items;
    } on DioException catch (e) {
      // Catch Dio-specific errors (e.g., network issues, server errors)
      if (e.response?.statusCode == 404) {
        throw NotFoundException();
      } else {
        throw ServerException();
      }
    } catch (e) {
      // Catch all other exceptions, e.g., parsing errors
      throw ServerException();
    }
  }

  @override
  Future<PostDetailsModel> getPostDetails(String idHash) async {
    try {
      final response = await dio.get(
        '/interview.mplist',
        queryParameters: {'id_hash': idHash},
      );

      // Assuming the API response returns a single JSON object for the details
      final json = response.data as Map<String, dynamic>;

      // Map the JSON to a PostDetailsModel
      final details = PostDetailsModel.fromJson(json);

      return details;
    } on DioException catch (e) {
      // Catch Dio-specific errors
      if (e.response?.statusCode == 404) {
        throw NotFoundException();
      } else {
        throw ServerException();
      }
    } catch (e) {
      // Catch all other exceptions, e.g., parsing errors
      throw ServerException();
    }
  }
}
