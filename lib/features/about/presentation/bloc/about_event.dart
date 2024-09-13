import 'package:built_value/built_value.dart';

part 'about_event.g.dart';

abstract class AboutEvent {}

abstract class GetAbout extends AboutEvent
    implements Built<GetAbout, GetAboutBuilder> {
  GetAbout._();

  factory GetAbout([void Function(GetAboutBuilder) updates]) = _$GetAbout;
}
