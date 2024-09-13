import 'package:dartz/dartz.dart';

import '../entities/about.dart';

abstract class AboutRepository {
  Future<Either<Exception, About>> getAbout();
}
