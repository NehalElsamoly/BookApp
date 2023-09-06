import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/api_services.dart';
import 'core/app_router.dart';
import 'core/bloc_obseve.dart';
import 'core/service_locator.dart';
import 'features/home/data/repo/home_detail_repo_implementation.dart';
import 'features/home/presentation/viewmodel/details/details_cubit.dart';
import 'features/home/presentation/viewmodel/images/images_cubit.dart';
import 'features/home/presentation/viewmodel/newests/newest_cubit.dart';

void main() {
  setup();
  Bloc.observer = BlocObserve();

  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                NewestCubit(getIt.get<HomeDetailRepoImplementation>())
                  ..fetchNewestBook()),
        BlocProvider(create: (context) => DetailsCubit()),
        BlocProvider(
          create: (context) => ImagesCubit(HomeDetailRepoImplementation(
              apiServices: ApiServices(dio: Dio())))
            ..fetchImageBook(),
        )
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => MaterialApp.router(
                routerConfig: AppRouter.route,
                debugShowCheckedModeBanner: false,
                theme: ThemeData.dark().copyWith(
                    scaffoldBackgroundColor: kprimaryColor,
                    textTheme: GoogleFonts.montserratTextTheme(
                        ThemeData.dark().textTheme)),
              )),
    );
  }
}
