// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get percentIndicator => throw _privateConstructorUsedError;
  bool get isReady => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<ResultTasks>? get listResultTasks => throw _privateConstructorUsedError;
  List<GridResultItems>? get gridResultItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {bool isLoading,
      int percentIndicator,
      bool isReady,
      Failure? error,
      String url,
      List<ResultTasks>? listResultTasks,
      List<GridResultItems>? gridResultItems});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? percentIndicator = null,
    Object? isReady = null,
    Object? error = freezed,
    Object? url = null,
    Object? listResultTasks = freezed,
    Object? gridResultItems = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      percentIndicator: null == percentIndicator
          ? _value.percentIndicator
          : percentIndicator // ignore: cast_nullable_to_non_nullable
              as int,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      listResultTasks: freezed == listResultTasks
          ? _value.listResultTasks
          : listResultTasks // ignore: cast_nullable_to_non_nullable
              as List<ResultTasks>?,
      gridResultItems: freezed == gridResultItems
          ? _value.gridResultItems
          : gridResultItems // ignore: cast_nullable_to_non_nullable
              as List<GridResultItems>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int percentIndicator,
      bool isReady,
      Failure? error,
      String url,
      List<ResultTasks>? listResultTasks,
      List<GridResultItems>? gridResultItems});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? percentIndicator = null,
    Object? isReady = null,
    Object? error = freezed,
    Object? url = null,
    Object? listResultTasks = freezed,
    Object? gridResultItems = freezed,
  }) {
    return _then(_$HomePageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      percentIndicator: null == percentIndicator
          ? _value.percentIndicator
          : percentIndicator // ignore: cast_nullable_to_non_nullable
              as int,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      listResultTasks: freezed == listResultTasks
          ? _value._listResultTasks
          : listResultTasks // ignore: cast_nullable_to_non_nullable
              as List<ResultTasks>?,
      gridResultItems: freezed == gridResultItems
          ? _value._gridResultItems
          : gridResultItems // ignore: cast_nullable_to_non_nullable
              as List<GridResultItems>?,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {this.isLoading = false,
      this.percentIndicator = 0,
      this.isReady = false,
      this.error,
      this.url = '',
      final List<ResultTasks>? listResultTasks,
      final List<GridResultItems>? gridResultItems})
      : _listResultTasks = listResultTasks,
        _gridResultItems = gridResultItems;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int percentIndicator;
  @override
  @JsonKey()
  final bool isReady;
  @override
  final Failure? error;
  @override
  @JsonKey()
  final String url;
  final List<ResultTasks>? _listResultTasks;
  @override
  List<ResultTasks>? get listResultTasks {
    final value = _listResultTasks;
    if (value == null) return null;
    if (_listResultTasks is EqualUnmodifiableListView) return _listResultTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GridResultItems>? _gridResultItems;
  @override
  List<GridResultItems>? get gridResultItems {
    final value = _gridResultItems;
    if (value == null) return null;
    if (_gridResultItems is EqualUnmodifiableListView) return _gridResultItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomePageState(isLoading: $isLoading, percentIndicator: $percentIndicator, isReady: $isReady, error: $error, url: $url, listResultTasks: $listResultTasks, gridResultItems: $gridResultItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.percentIndicator, percentIndicator) ||
                other.percentIndicator == percentIndicator) &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._listResultTasks, _listResultTasks) &&
            const DeepCollectionEquality()
                .equals(other._gridResultItems, _gridResultItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      percentIndicator,
      isReady,
      error,
      url,
      const DeepCollectionEquality().hash(_listResultTasks),
      const DeepCollectionEquality().hash(_gridResultItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {final bool isLoading,
      final int percentIndicator,
      final bool isReady,
      final Failure? error,
      final String url,
      final List<ResultTasks>? listResultTasks,
      final List<GridResultItems>? gridResultItems}) = _$HomePageStateImpl;

  @override
  bool get isLoading;
  @override
  int get percentIndicator;
  @override
  bool get isReady;
  @override
  Failure? get error;
  @override
  String get url;
  @override
  List<ResultTasks>? get listResultTasks;
  @override
  List<GridResultItems>? get gridResultItems;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
