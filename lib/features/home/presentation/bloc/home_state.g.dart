// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final BuiltList<HomeEntity> homeDataItems;
  @override
  final PaginationStateData<HomePaginationItemEntity> homePagination;
  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isError;
  @override
  final String message;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates))._build();

  _$HomeState._(
      {required this.homeDataItems,
      required this.homePagination,
      required this.isLoading,
      required this.isSuccess,
      required this.isError,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        homeDataItems, r'HomeState', 'homeDataItems');
    BuiltValueNullFieldError.checkNotNull(
        homePagination, r'HomeState', 'homePagination');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(isSuccess, r'HomeState', 'isSuccess');
    BuiltValueNullFieldError.checkNotNull(isError, r'HomeState', 'isError');
    BuiltValueNullFieldError.checkNotNull(message, r'HomeState', 'message');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        homeDataItems == other.homeDataItems &&
        homePagination == other.homePagination &&
        isLoading == other.isLoading &&
        isSuccess == other.isSuccess &&
        isError == other.isError &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, homeDataItems.hashCode);
    _$hash = $jc(_$hash, homePagination.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, isError.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeState')
          ..add('homeDataItems', homeDataItems)
          ..add('homePagination', homePagination)
          ..add('isLoading', isLoading)
          ..add('isSuccess', isSuccess)
          ..add('isError', isError)
          ..add('message', message))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  ListBuilder<HomeEntity>? _homeDataItems;
  ListBuilder<HomeEntity> get homeDataItems =>
      _$this._homeDataItems ??= new ListBuilder<HomeEntity>();
  set homeDataItems(ListBuilder<HomeEntity>? homeDataItems) =>
      _$this._homeDataItems = homeDataItems;

  PaginationStateDataBuilder<HomePaginationItemEntity>? _homePagination;
  PaginationStateDataBuilder<HomePaginationItemEntity> get homePagination =>
      _$this._homePagination ??=
          new PaginationStateDataBuilder<HomePaginationItemEntity>();
  set homePagination(
          PaginationStateDataBuilder<HomePaginationItemEntity>?
              homePagination) =>
      _$this._homePagination = homePagination;

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

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _homeDataItems = $v.homeDataItems.toBuilder();
      _homePagination = $v.homePagination.toBuilder();
      _isLoading = $v.isLoading;
      _isSuccess = $v.isSuccess;
      _isError = $v.isError;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeState build() => _build();

  _$HomeState _build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              homeDataItems: homeDataItems.build(),
              homePagination: homePagination.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'HomeState', 'isLoading'),
              isSuccess: BuiltValueNullFieldError.checkNotNull(
                  isSuccess, r'HomeState', 'isSuccess'),
              isError: BuiltValueNullFieldError.checkNotNull(
                  isError, r'HomeState', 'isError'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'HomeState', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'homeDataItems';
        homeDataItems.build();
        _$failedField = 'homePagination';
        homePagination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
