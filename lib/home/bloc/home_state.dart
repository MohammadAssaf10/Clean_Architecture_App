part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

final class HomeError extends HomeState {
  final String errorMessage;

  const HomeError({
    required this.errorMessage,
  });

  @override
  List<Object?> get props => [
        errorMessage,
      ];
}

final class HomeLoaded extends HomeState {
  final HomePaginationModel homePaginationModel;

  const HomeLoaded({
    required this.homePaginationModel,
  });

  @override
  List<Object?> get props => [
        homePaginationModel,
      ];
}
