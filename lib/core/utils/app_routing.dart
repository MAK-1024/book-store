import 'package:coursee/core/serviceLocator/serviceLocator.dart';
import 'package:coursee/features/Home/presntation/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:coursee/features/Home/presntation/views/BookDetView.dart';
import 'package:coursee/features/Home/presntation/views/homeView.dart';
import 'package:coursee/features/search/presntation/views/searchView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/data/models/BookModel.dart';
import '../../features/Home/data/repo/home_repo_impl.dart';
import '../../features/splash/presentaion/views/SplashView.dart';

abstract class AppRouter
{
  static const KhomeView = '/homeView';
  static const KBookDetalisView = '/bookDetalisView';
  static const KSearchViewView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),

      GoRoute(
        path: KhomeView,
        builder: (context, state) => HomeView(),
      ),

      GoRoute(
        path: KBookDetalisView,
        builder: (context, state) => BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()
            ),
            child: BookDetalisView(
              bookModel: state.extra as BookModel,
            )),
      ),

      GoRoute(
        path: KSearchViewView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}