import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/base_bloc_state.dart';
import '../../../../core/entities/pagination_state_data.dart';
import '../../domain/entities/home_item.dart';
import '../../domain/entities/home_pagination/home_pagination_item.dart';

part 'home_state.g.dart';

abstract class HomeState
    with BaseState
    implements Built<HomeState, HomeStateBuilder> {
  BuiltList<HomeItem> get homeItems;

  PaginationStateData<HomePaginationItem> get homePagination;

  HomeState._();

  factory HomeState([void Function(HomeStateBuilder) updates]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState(
      (b) => b
        ..isLoading = false
        ..isSuccess = false
        ..isError = false
        ..message = ''
        ..homeItems.replace([])
        ..homePagination
            .replace(PaginationStateData<HomePaginationItem>.initial()),
    );
  }
}
