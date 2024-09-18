import 'package:clean_architecture_app/core/error/exceptions.dart';
import 'package:clean_architecture_app/features/about/domain/entities/about.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/repositories/about_repository.dart';
import '../data_sources/remote/about_remote_data_source.dart';
import '../models/about_model.dart';

@LazySingleton(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutRemoteDataSource aboutRemoteDataSource;

  AboutRepositoryImpl({
    required this.aboutRemoteDataSource,
  });

  @override
  Future<Either<Failure, About>> getAbout() async {
    try {
      final AboutModel result = await aboutRemoteDataSource.getAbout();
      final About finalResult = result.toDomain();
      return Right(finalResult);
    } on ServerException catch (e) {
      return Left(ServerFailure(error: e.exceptionMessage));
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
