import 'package:built_value/built_value.dart';

import '../../../../core/base_bloc_state.dart';
import '../../domain/entities/sub_about.dart';

part 'about_state.g.dart';

abstract class AboutState
    with BaseState
    implements Built<AboutState, AboutStateBuilder> {
  SubAbout? get about;

  AboutState._();

  factory AboutState([void Function(AboutStateBuilder) updates]) = _$AboutState;

  factory AboutState.initial() {
    return AboutState(
      (b) => b
        ..isLoading = false
        ..isSuccess = false
        ..isError = false
        ..message = ''
        ..about = null,
    );
  }
}
