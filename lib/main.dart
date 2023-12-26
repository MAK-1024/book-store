import 'package:coursee/core/serviceLocator/serviceLocator.dart';
import 'package:coursee/core/utils/app_routing.dart';
import 'package:coursee/features/Home/data/repo/home_repo_impl.dart';
import 'package:coursee/features/Home/presntation/featuredBooksCubit/featuredBooksCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/Home/presntation/NewsetBooksCubit/NewsetBooksCubit.dart';


void main() {
  setUp();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers:
        [
              BlocProvider(create: (context) => FeaturedBooksCubit(
                getIt.get<HomeRepoImpl>()
              )..fetchFeaturedBooks(),),

              BlocProvider(create: (context) => NewsetBooksCubit(
                getIt.get<HomeRepoImpl>()
          )..fetchNewsetBooks(),),
        ],

        child:  MaterialApp.router(
      routerConfig: AppRouter.router ,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
    )
    );
  }
}



