
import '../../../../core/entities/base_entity.dart';
import 'home_item.dart';

class Home extends BaseEntity {
  final List<HomeItem> homeItems;

  const Home({
    required super.status,
    required super.message,
    required this.homeItems,
  });

  @override
  List<Object?> get props => [
        status,
        message,
        homeItems,
      ];
}
