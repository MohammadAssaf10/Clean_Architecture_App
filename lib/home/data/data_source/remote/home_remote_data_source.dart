import '../../../../core/data/base_remote_data_source.dart';
import '../../models/about_model.dart';
import '../../models/home_model.dart';
import '../../models/home_list_model.dart';
import '../../models/home_pagination_model.dart';

abstract class HomeRemoteDataSource extends BaseRemoteDataSource {
  Future<HomeModel> getHome();

  Future<HomeListModel> getHomeList();

  Future<HomePaginationModel> getHomePaginationList();

  Future<AboutModel> getAbout();
}
