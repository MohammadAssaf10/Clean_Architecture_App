import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/home_model.dart';
import '../../models/home_pagination_models/home_pagination_model.dart';

abstract class HomeRemoteDataSource extends BaseRemoteDataSource {
  Future<HomeModel> getHomeList();
  Future<HomePaginationModel> getHomePaginationList();
}
