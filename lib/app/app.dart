import 'package:flutter/material.dart';

import '../core/routing/app_router.dart';
import '../core/routing/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clean Architecture App',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.homePage,
    );
  }
}
