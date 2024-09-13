import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/home.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetHomeListUseCase {
  final HomeRepository homeRepository;

  GetHomeListUseCase({
    required this.homeRepository,
  });

  Future<Either<Exception, Home>> call() async =>
      await homeRepository.getHomeList();
}
