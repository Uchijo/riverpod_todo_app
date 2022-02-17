// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoListStateTearOff {
  const _$TodoListStateTearOff();

  _TodoListState call({List<Todo> todoList = const []}) {
    return _TodoListState(
      todoList: todoList,
    );
  }
}

/// @nodoc
const $TodoListState = _$TodoListStateTearOff();

/// @nodoc
mixin _$TodoListState {
  List<Todo> get todoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todoList});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_value.copyWith(
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(
          _TodoListState value, $Res Function(_TodoListState) then) =
      __$TodoListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(
      _TodoListState _value, $Res Function(_TodoListState) _then)
      : super(_value, (v) => _then(v as _TodoListState));

  @override
  _TodoListState get _value => super._value as _TodoListState;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_TodoListState(
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoListState with DiagnosticableTreeMixin implements _TodoListState {
  _$_TodoListState({this.todoList = const []});

  @JsonKey()
  @override
  final List<Todo> todoList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoListState(todoList: $todoList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoListState'))
      ..add(DiagnosticsProperty('todoList', todoList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListState &&
            const DeepCollectionEquality().equals(other.todoList, todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoList));

  @JsonKey(ignore: true)
  @override
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);
}

abstract class _TodoListState implements TodoListState {
  factory _TodoListState({List<Todo> todoList}) = _$_TodoListState;

  @override
  List<Todo> get todoList;
  @override
  @JsonKey(ignore: true)
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call(
      {TodoStatus status = TodoStatus.open,
      required String title,
      String detail = '',
      required String id}) {
    return _Todo(
      status: status,
      title: title,
      detail: detail,
      id: id,
    );
  }
}

/// @nodoc
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  TodoStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({TodoStatus status, String title, String detail, String id});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({TodoStatus status, String title, String detail, String id});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object? status = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? id = freezed,
  }) {
    return _then(_Todo(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Todo with DiagnosticableTreeMixin implements _Todo {
  _$_Todo(
      {this.status = TodoStatus.open,
      required this.title,
      this.detail = '',
      required this.id});

  @JsonKey()
  @override
  final TodoStatus status;
  @override
  final String title;
  @JsonKey()
  @override
  final String detail;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Todo(status: $status, title: $title, detail: $detail, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Todo'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('detail', detail))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);
}

abstract class _Todo implements Todo {
  factory _Todo(
      {TodoStatus status,
      required String title,
      String detail,
      required String id}) = _$_Todo;

  @override
  TodoStatus get status;
  @override
  String get title;
  @override
  String get detail;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}
