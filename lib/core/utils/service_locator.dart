import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bookly/Feature/home/presentation/manger/featured_books_cubit.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>()));

}