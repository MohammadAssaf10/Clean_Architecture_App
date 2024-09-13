import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../entities/home_pagination/home_pagination.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetHomePaginationListUseCase {
  final HomeRepository homeRepository;

  GetHomePaginationListUseCase({
    required this.homeRepository,
  });

  Future<Either<Exception, HomePagination>> call() async =>
      await homeRepository.getHomePaginationList();
}
