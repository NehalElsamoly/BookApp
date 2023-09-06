
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled8/core/api_services.dart';

import '../features/home/data/repo/home_detail_repo_implementation.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(ApiServices(dio: Dio()));

  getIt.registerSingleton<HomeDetailRepoImplementation>(
      HomeDetailRepoImplementation(apiServices: getIt.get<ApiServices>()));
}
