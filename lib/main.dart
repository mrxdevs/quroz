import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:quroz/features/marketplace/data/datasources/marketplace_remote_data_source.dart';
import 'package:quroz/features/marketplace/data/repositories/marketplace_repository_impl.dart';
import 'package:quroz/features/marketplace/domain/usecases/get_marketplace_items.dart';
import 'package:quroz/features/marketplace/presentation/bloc/marketplace_item_bloc/marketplace_bloc.dart';

import 'package:quroz/presentation/routes/app_routes.dart';

final sl = GetIt.instance;

Future<void> main() async {
  final dio = Dio(
    BaseOptions(baseUrl: "https://staging1.hashfame.com/api/v1/"),
  );
  final marketplaceRemoteDataSource = MarketplaceRemoteDataSourceImplMock(
    dio: dio,
  );
  final marketplaceRepository = MarketplaceRepositoryImpl(
    remoteDataSource: marketplaceRemoteDataSource,
  );
  final getMarketplaceItems = GetMarketplaceItems(marketplaceRepository);
  final marketplaceBloc = MarketplaceBloc(
    getMarketplaceItems: getMarketplaceItems,
  );
  runApp(MyApp(marketplaceBloc: marketplaceBloc));
}

class MyApp extends StatelessWidget {
  final MarketplaceBloc marketplaceBloc;
  const MyApp({super.key, required this.marketplaceBloc});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: marketplaceBloc)],
      child: MaterialApp.router(
        title: 'Quroz',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
