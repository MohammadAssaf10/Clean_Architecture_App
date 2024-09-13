import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/about/presentation/bloc/about_bloc.dart';
import '../../features/about/presentation/pages/about_page.dart';
import '../../features/home/presentation/bloc/home_bloc.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/home/presentation/pages/home_pagination_page.dart';
import '../di/injection.dart';
import 'routes.dart';

class AppRouter {
  AppRouter._();

  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<HomeBloc>(
            create: (context) => getIt<HomeBloc>()..getHomeList(),
            child: const Homepage(),
          ),
        );
      case Routes.homePaginationPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<HomeBloc>(
            create: (context) => getIt<HomeBloc>()..getHomePaginationList(),
            child: const HomePaginationPage(),
          ),
        );
      case Routes.aboutPage:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AboutBloc>(
            create: (context) => getIt<AboutBloc>()..getAbout(),
            child: const AboutPage(),
          ),
        );
      default:
        return null;
    }
  }
}
