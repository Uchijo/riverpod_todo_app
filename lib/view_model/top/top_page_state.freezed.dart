// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TopPageStateTearOff {
  const _$TopPageStateTearOff();

  _TopPageState call(
      {required List<Todo> exposuredTodoList,
      FilterType filterType = FilterType.all}) {
    return _TopPageState(
      exposuredTodoList: exposuredTodoList,
      filterType: filterType,
    );
  }
}

/// @nodoc
const $TopPageState = _$TopPageStateTearOff();

/// @nodoc
mixin _$TopPageState {
  List<Todo> get exposuredTodoList => throw _privateConstructorUsedError;
  FilterType get filterType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopPageStateCopyWith<TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPageStateCopyWith<$Res> {
  factory $TopPageStateCopyWith(
          TopPageState value, $Res Function(TopPageState) then) =
      _$TopPageStateCopyWithImpl<$Res>;
  $Res call({List<Todo> exposuredTodoList, FilterType filterType});
}

/// @nodoc
class _$TopPageStateCopyWithImpl<$Res> implements $TopPageStateCopyWith<$Res> {
  _$TopPageStateCopyWithImpl(this._value, this._then);

  final TopPageState _value;
  // ignore: unused_field
  final $Res Function(TopPageState) _then;

  @override
  $Res call({
    Object? exposuredTodoList = freezed,
    Object? filterType = freezed,
  }) {
    return _then(_value.copyWith(
      exposuredTodoList: exposuredTodoList == freezed
          ? _value.exposuredTodoList
          : exposuredTodoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      filterType: filterType == freezed
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as FilterType,
    ));
  }
}

/// @nodoc
abstract class _$TopPageStateCopyWith<$Res>
    implements $TopPageStateCopyWith<$Res> {
  factory _$TopPageStateCopyWith(
          _TopPageState value, $Res Function(_TopPageState) then) =
      __$TopPageStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> exposuredTodoList, FilterType filterType});
}

/// @nodoc
class __$TopPageStateCopyWithImpl<$Res> extends _$TopPageStateCopyWithImpl<$Res>
    implements _$TopPageStateCopyWith<$Res> {
  __$TopPageStateCopyWithImpl(
      _TopPageState _value, $Res Function(_TopPageState) _then)
      : super(_value, (v) => _then(v as _TopPageState));

  @override
  _TopPageState get _value => super._value as _TopPageState;

  @override
  $Res call({
    Object? exposuredTodoList = freezed,
    Object? filterType = freezed,
  }) {
    return _then(_TopPageState(
      exposuredTodoList: exposuredTodoList == freezed
          ? _value.exposuredTodoList
          : exposuredTodoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      filterType: filterType == freezed
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as FilterType,
    ));
  }
}

/// @nodoc

class _$_TopPageState with DiagnosticableTreeMixin implements _TopPageState {
  _$_TopPageState(
      {required this.exposuredTodoList, this.filterType = FilterType.all});

  @override
  final List<Todo> exposuredTodoList;
  @JsonKey()
  @override
  final FilterType filterType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopPageState(exposuredTodoList: $exposuredTodoList, filterType: $filterType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopPageState'))
      ..add(DiagnosticsProperty('exposuredTodoList', exposuredTodoList))
      ..add(DiagnosticsProperty('filterType', filterType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopPageState &&
            const DeepCollectionEquality()
                .equals(other.exposuredTodoList, exposuredTodoList) &&
            const DeepCollectionEquality()
                .equals(other.filterType, filterType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exposuredTodoList),
      const DeepCollectionEquality().hash(filterType));

  @JsonKey(ignore: true)
  @override
  _$TopPageStateCopyWith<_TopPageState> get copyWith =>
      __$TopPageStateCopyWithImpl<_TopPageState>(this, _$identity);
}

abstract class _TopPageState implements TopPageState {
  factory _TopPageState(
      {required List<Todo> exposuredTodoList,
      FilterType filterType}) = _$_TopPageState;

  @override
  List<Todo> get exposuredTodoList;
  @override
  FilterType get filterType;
  @override
  @JsonKey(ignore: true)
  _$TopPageStateCopyWith<_TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
