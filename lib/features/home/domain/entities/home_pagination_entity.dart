import 'package:equatable/equatable.dart';

import 'home_pagination_item_entity.dart';

class HomePaginationEntity extends Equatable {
  final List<HomePaginationItemEntity> homePaginationItems;
  final int totalPages;

  const HomePaginationEntity({
    required this.homePaginationItems,
    required this.totalPages,
  });

  @override
  List<Object?> get props => [
        homePaginationItems,
        totalPages,
      ];
}
