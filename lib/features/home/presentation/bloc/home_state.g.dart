// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final BuiltList<HomeItem> homeItems;
  @override
  final PaginationStateData<HomePaginationItem> homePagination;
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
      {required this.homeItems,
      required this.homePagination,
      required this.isLoading,
      required this.isSuccess,
      required this.isError,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(homeItems, r'HomeState', 'homeItems');
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
        homeItems == other.homeItems &&
        homePagination == other.homePagination &&
        isLoading == other.isLoading &&
        isSuccess == other.isSuccess &&
        isError == other.isError &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, homeItems.hashCode);
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
          ..add('homeItems', homeItems)
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

  ListBuilder<HomeItem>? _homeItems;
  ListBuilder<HomeItem> get homeItems =>
      _$this._homeItems ??= new ListBuilder<HomeItem>();
  set homeItems(ListBuilder<HomeItem>? homeItems) =>
      _$this._homeItems = homeItems;

  PaginationStateDataBuilder<HomePaginationItem>? _homePagination;
  PaginationStateDataBuilder<HomePaginationItem> get homePagination =>
      _$this._homePagination ??=
          new PaginationStateDataBuilder<HomePaginationItem>();
  set homePagination(
          PaginationStateDataBuilder<HomePaginationItem>? homePagination) =>
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
      _homeItems = $v.homeItems.toBuilder();
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
              homeItems: homeItems.build(),
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
        _$failedField = 'homeItems';
        homeItems.build();
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
