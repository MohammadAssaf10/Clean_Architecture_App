import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_home_list_use_case.dart';
import '../../domain/use_cases/get_home_pagination_list_use_case.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  void getHomeList() {
    add(GetHomeList());
  }

  void getHomePaginationList() {
    add(GetHomePaginationList());
  }

  final GetHomeListUseCase _getHomeListUseCase;
  final GetHomePaginationListUseCase _getHomePaginationListUseCase;

  HomeBloc(
    this._getHomeListUseCase,
    this._getHomePaginationListUseCase,
  ) : super(HomeState.initial()) {
    on<GetHomeList>(
      (event, emit) async {
        emit(
          state.rebuild(
            (b) => b
              ..isLoading = true
              ..isSuccess = false
              ..isError = false
              ..message = '',
          ),
        );
        final result = await _getHomeListUseCase();
        result.fold(
          (failure) {
            emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..isError = true
                  ..message = failure.toString()
                  ..isSuccess = false,
              ),
            );
          },
          (data) {
            emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..isError = false
                  ..message = ''
                  ..isSuccess = true
                  ..homeItems.addAll(data.homeItems),
              ),
            );
          },
        );
      },
    );
    on<GetHomePaginationList>(
      (event, emit) async {
        if (state.homePagination.isFinished) return;
        if (state.homePagination.currentPage == 0) {
          emit(
            state.rebuild(
              (b) => b
                ..isLoading = true
                ..isSuccess = false
                ..isError = false
                ..message = '',
            ),
          );
        } else {
          emit(
            state.rebuild(
              (b) => b
                ..homePagination.isLoading = true
                ..isError = false
                ..message = '',
            ),
          );
        }
        final result = await _getHomePaginationListUseCase();
        result.fold(
          (failure) {
            emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..isError = true
                  ..message = failure.toString()
                  ..isSuccess = false
                  ..homePagination.isLoading = false,
              ),
            );
          },
          (data) {
            emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..homePagination.isLoading = false
                  ..isError = false
                  ..message = ''
                  ..isSuccess = true
                  ..homePagination
                      .items
                      .addAll(data.subHomePagination.homePaginationItems)
                  ..homePagination.isFinished = b.homePagination.currentPage! >=
                      data.subHomePagination.totalPages
                  ..homePagination.currentPage =
                      b.homePagination.currentPage! + 1,
              ),
            );
          },
        );
      },
    );
  }
}
