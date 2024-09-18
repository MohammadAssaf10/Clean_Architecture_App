import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/about.dart';
import '../repositories/about_repository.dart';

@lazySingleton
class GetAboutUseCase {
  final AboutRepository aboutRepository;

  GetAboutUseCase({
    required this.aboutRepository,
  });

  Future<Either<Failure, About>> call() async =>
      await aboutRepository.getAbout();
}
