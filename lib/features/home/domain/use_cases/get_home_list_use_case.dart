import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_entity.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetHomeListUseCase {
  final HomeRepository homeRepository;

  GetHomeListUseCase({
    required this.homeRepository,
  });

  Future<Either<Failure, List<HomeEntity>>> call() async =>
      await homeRepository.getHomeList();
}
