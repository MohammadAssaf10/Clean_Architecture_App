import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/about.dart';

abstract class AboutRepository {
  Future<Either<Failure, About>> getAbout();
}
