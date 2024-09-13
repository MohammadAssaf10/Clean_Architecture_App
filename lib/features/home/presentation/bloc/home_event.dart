import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent {}

abstract class GetHomeList extends HomeEvent
    implements Built<GetHomeList, GetHomeListBuilder> {
  GetHomeList._();

  factory GetHomeList([void Function(GetHomeListBuilder) updates]) =
      _$GetHomeList;
}

abstract class GetHomePaginationList extends HomeEvent
    implements Built<GetHomePaginationList, GetHomePaginationListBuilder> {
  GetHomePaginationList._();

  factory GetHomePaginationList(
          [void Function(GetHomePaginationListBuilder) updates]) =
      _$GetHomePaginationList;
}
