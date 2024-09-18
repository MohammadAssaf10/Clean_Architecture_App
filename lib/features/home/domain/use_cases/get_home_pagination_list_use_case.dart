import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/home_pagination_entity.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetHomePaginationListUseCase {
  final HomeRepository homeRepository;

  GetHomePaginationListUseCase({
    required this.homeRepository,
  });

  Future<Either<Failure, HomePaginationEntity>> call() async =>
      await homeRepository.getHomePaginationList();
}
