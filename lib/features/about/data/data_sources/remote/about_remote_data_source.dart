import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/about_model.dart';

abstract class AboutRemoteDataSource extends BaseRemoteDataSource {
  Future<AboutModel> getAbout();
}
