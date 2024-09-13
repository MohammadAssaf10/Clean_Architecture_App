import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart' as ui;

part 'pagination_state_data.g.dart';

abstract class PaginationStateData<T>
    implements Built<PaginationStateData<T>, PaginationStateDataBuilder<T>> {
  BuiltList<T> get items;

  bool get isLoading;

  bool get isFinished;

  int get currentPage;

  PaginationStateData._();

  factory PaginationStateData(
          [Function(PaginationStateDataBuilder<T> b) updates]) =
      _$PaginationStateData<T>;

  factory PaginationStateData.initial() => PaginationStateData<T>(
        (b) => b
          ..items.replace([])
          ..isLoading = false
          ..isFinished = false
          ..currentPage = 0,
      );

  bool _paginationStateCanGetMoreData() {
    return (!isFinished && !isLoading && items.isNotEmpty) ? true : false;
  }

  void checkPaginationInitialExtent({
    required void Function() addEvent,
    required ui.ScrollController scrollController,
    bool isHorizontal = false,
  }) {
    ui.WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final double maxScroll = scrollController.position.maxScrollExtent;
        final double currentScroll = scrollController.offset;
        if (currentScroll == maxScroll && _paginationStateCanGetMoreData()) {
          addEvent();
        }
      },
    );
  }
}
