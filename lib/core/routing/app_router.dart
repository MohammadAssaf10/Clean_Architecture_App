import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/bloc/home_bloc.dart';
import '../../home/presentation/pages/home_page.dart';
import '../di/injection.dart';
import 'routes.dart';

class AppRouter {
  AppRouter._();
  static Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<HomeBloc>(
            create: (context) =>
                getIt<HomeBloc>()..add(GetHomePaginationList()),
            child: const MyHomePage(),
          ),
        );
      default:
        return null;
    }
  }
}
