import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_about_use_case.dart';
import 'about_event.dart';
import 'about_state.dart';

@injectable
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  void getAbout() {
    add(GetAbout());
  }

  final GetAboutUseCase _getAboutUseCase;

  AboutBloc(
    this._getAboutUseCase,
  ) : super(AboutState.initial()) {
    on<GetAbout>(
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
        final result = await _getAboutUseCase();
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
                  ..about = data.subAbout,
              ),
            );
          },
        );
      },
    );
  }
}
