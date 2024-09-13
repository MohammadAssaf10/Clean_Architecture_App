// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AboutState extends AboutState {
  @override
  final SubAbout? about;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isError;
  @override
  final String message;

  factory _$AboutState([void Function(AboutStateBuilder)? updates]) =>
      (new AboutStateBuilder()..update(updates))._build();

  _$AboutState._(
      {this.about,
      required this.isLoading,
      required this.isSuccess,
      required this.isError,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'AboutState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isSuccess, r'AboutState', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(isError, r'AboutState', 'isError');
    BuiltValueNullFieldError.checkNotNull(message, r'AboutState', 'message');
  }

  @override
  AboutState rebuild(void Function(AboutStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AboutStateBuilder toBuilder() => new AboutStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AboutState &&
        about == other.about &&
        isLoading == other.isLoading &&
        isSuccess == other.isSuccess &&
        isError == other.isError &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AboutState')
          ..add('about', about)
          ..add('isLoading', isLoading)
          ..add('isSuccess', isSuccess)
          ..add('isError', isError)
          ..add('message', message))
        .toString();
  }
}

class AboutStateBuilder implements Builder<AboutState, AboutStateBuilder> {
  _$AboutState? _$v;

  SubAbout? _about;
  SubAbout? get about => _$this._about;
  set about(SubAbout? about) => _$this._about = about;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  bool? _isError;
  bool? get isError => _$this._isError;
  set isError(bool? isError) => _$this._isError = isError;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AboutStateBuilder();

  AboutStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _about = $v.about;
      _isLoading = $v.isLoading;
      _isSuccess = $v.isSuccess;
      _isError = $v.isError;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AboutState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AboutState;
  }

  @override
  void update(void Function(AboutStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AboutState build() => _build();

  _$AboutState _build() {
    final _$result = _$v ??
        new _$AboutState._(
            about: about,
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'AboutState', 'isLoading'),
            isSuccess: BuiltValueNullFieldError.checkNotNull(
                isSuccess, r'AboutState', 'isSuccess'),
            isError: BuiltValueNullFieldError.checkNotNull(
                isError, r'AboutState', 'isError'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'AboutState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
