import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../data/models/home_pagination_model.dart';
import '../data/repositories/home_repository.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc(
    this._homeRepository,
  ) : super(HomeInitial()) {
    on<GetHomePaginationList>((event, emit) async {
      emit(HomeLoading());
      debugPrint('__________ GetHomePaginationList __________');
      await Future.delayed(const Duration(milliseconds: 2500));
      final result = await _homeRepository.getHomePaginationList();
      result.fold(
        (exception) {
          emit(HomeError(errorMessage: exception.toString()));
        },
        (data) {
          emit(HomeLoaded(homePaginationModel: data));
          debugPrint('Status: ${data.status}');
          debugPrint('Message: ${data.message}');
          debugPrint(
              'Total Elements: ${data.subHomePaginationModel.totalElements}');
          debugPrint('Total Pages: ${data.subHomePaginationModel.totalPages}');
          debugPrint(
              'Home Entity list items: ${data.subHomePaginationModel.subHomeModelList}');
        },
      );
    });
  }
}
