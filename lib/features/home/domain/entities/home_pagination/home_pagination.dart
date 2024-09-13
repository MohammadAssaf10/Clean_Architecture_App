import 'package:clean_architecture_app/core/entities/base_entity.dart';

import 'sub_home_pagination.dart';

class HomePagination extends BaseEntity {
  final SubHomePagination subHomePagination;

  const HomePagination({
    required super.status,
    required super.message,
    required this.subHomePagination,
  });

  @override
  List<Object?> get props => [
        status,
        message,
        subHomePagination,
      ];
}
