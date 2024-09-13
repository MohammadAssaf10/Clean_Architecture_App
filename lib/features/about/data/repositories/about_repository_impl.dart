import 'package:clean_architecture_app/features/about/domain/entities/about.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/about_repository.dart';
import '../data_sources/remote/about_remote_data_source.dart';

@LazySingleton(as: AboutRepository)
class AboutRepositoryImpl implements AboutRepository {
  final AboutRemoteDataSource aboutRemoteDataSource;

  AboutRepositoryImpl({
    required this.aboutRemoteDataSource,
  });

  @override
  Future<Either<Exception, About>> getAbout() async {
    try {
      final About result = await aboutRemoteDataSource.getAbout();
      return Right(result);
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
