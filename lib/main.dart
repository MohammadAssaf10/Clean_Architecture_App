import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/di/injection.dart';
import 'core/utils/bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
