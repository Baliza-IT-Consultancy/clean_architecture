// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoEventTearOff {
  const _$TodoEventTearOff();

  _Started load() {
    return const _Started();
  }

  _AddTodo addTodo(TodoDTO todo) {
    return _AddTodo(
      todo,
    );
  }

  _RemoveTodo removeTodo(String todoId) {
    return _RemoveTodo(
      todoId,
    );
  }

  _UpdateTodo updateTodo(TodoDTO todo) {
    return _UpdateTodo(
      todo,
    );
  }
}

/// @nodoc
const $TodoEvent = _$TodoEventTearOff();

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(TodoDTO todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(TodoDTO todo) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) load,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res> implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  final TodoEvent _value;
  // ignore: unused_field
  final $Res Function(TodoEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.load()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TodoEvent.load'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(TodoDTO todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(TodoDTO todo) updateTodo,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) load,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Started implements TodoEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AddTodoCopyWith<$Res> {
  factory _$AddTodoCopyWith(_AddTodo value, $Res Function(_AddTodo) then) =
      __$AddTodoCopyWithImpl<$Res>;
  $Res call({TodoDTO todo});
}

/// @nodoc
class __$AddTodoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$AddTodoCopyWith<$Res> {
  __$AddTodoCopyWithImpl(_AddTodo _value, $Res Function(_AddTodo) _then)
      : super(_value, (v) => _then(v as _AddTodo));

  @override
  _AddTodo get _value => super._value as _AddTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_AddTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoDTO,
    ));
  }
}

/// @nodoc

class _$_AddTodo with DiagnosticableTreeMixin implements _AddTodo {
  const _$_AddTodo(this.todo);

  @override
  final TodoDTO todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.addTodo(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.addTodo'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$AddTodoCopyWith<_AddTodo> get copyWith =>
      __$AddTodoCopyWithImpl<_AddTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(TodoDTO todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(TodoDTO todo) updateTodo,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) load,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class _AddTodo implements TodoEvent {
  const factory _AddTodo(TodoDTO todo) = _$_AddTodo;

  TodoDTO get todo;
  @JsonKey(ignore: true)
  _$AddTodoCopyWith<_AddTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveTodoCopyWith<$Res> {
  factory _$RemoveTodoCopyWith(
          _RemoveTodo value, $Res Function(_RemoveTodo) then) =
      __$RemoveTodoCopyWithImpl<$Res>;
  $Res call({String todoId});
}

/// @nodoc
class __$RemoveTodoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$RemoveTodoCopyWith<$Res> {
  __$RemoveTodoCopyWithImpl(
      _RemoveTodo _value, $Res Function(_RemoveTodo) _then)
      : super(_value, (v) => _then(v as _RemoveTodo));

  @override
  _RemoveTodo get _value => super._value as _RemoveTodo;

  @override
  $Res call({
    Object? todoId = freezed,
  }) {
    return _then(_RemoveTodo(
      todoId == freezed
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveTodo with DiagnosticableTreeMixin implements _RemoveTodo {
  const _$_RemoveTodo(this.todoId);

  @override
  final String todoId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.removeTodo(todoId: $todoId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.removeTodo'))
      ..add(DiagnosticsProperty('todoId', todoId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveTodo &&
            const DeepCollectionEquality().equals(other.todoId, todoId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoId));

  @JsonKey(ignore: true)
  @override
  _$RemoveTodoCopyWith<_RemoveTodo> get copyWith =>
      __$RemoveTodoCopyWithImpl<_RemoveTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(TodoDTO todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(TodoDTO todo) updateTodo,
  }) {
    return removeTodo(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
  }) {
    return removeTodo?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (removeTodo != null) {
      return removeTodo(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) load,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return removeTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return removeTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (removeTodo != null) {
      return removeTodo(this);
    }
    return orElse();
  }
}

abstract class _RemoveTodo implements TodoEvent {
  const factory _RemoveTodo(String todoId) = _$_RemoveTodo;

  String get todoId;
  @JsonKey(ignore: true)
  _$RemoveTodoCopyWith<_RemoveTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateTodoCopyWith<$Res> {
  factory _$UpdateTodoCopyWith(
          _UpdateTodo value, $Res Function(_UpdateTodo) then) =
      __$UpdateTodoCopyWithImpl<$Res>;
  $Res call({TodoDTO todo});
}

/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res> extends _$TodoEventCopyWithImpl<$Res>
    implements _$UpdateTodoCopyWith<$Res> {
  __$UpdateTodoCopyWithImpl(
      _UpdateTodo _value, $Res Function(_UpdateTodo) _then)
      : super(_value, (v) => _then(v as _UpdateTodo));

  @override
  _UpdateTodo get _value => super._value as _UpdateTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_UpdateTodo(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as TodoDTO,
    ));
  }
}

/// @nodoc

class _$_UpdateTodo with DiagnosticableTreeMixin implements _UpdateTodo {
  const _$_UpdateTodo(this.todo);

  @override
  final TodoDTO todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoEvent.updateTodo(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoEvent.updateTodo'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      __$UpdateTodoCopyWithImpl<_UpdateTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(TodoDTO todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(TodoDTO todo) updateTodo,
  }) {
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
  }) {
    return updateTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(TodoDTO todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(TodoDTO todo)? updateTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) load,
    required TResult Function(_AddTodo value) addTodo,
    required TResult Function(_RemoveTodo value) removeTodo,
    required TResult Function(_UpdateTodo value) updateTodo,
  }) {
    return updateTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
  }) {
    return updateTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? load,
    TResult Function(_AddTodo value)? addTodo,
    TResult Function(_RemoveTodo value)? removeTodo,
    TResult Function(_UpdateTodo value)? updateTodo,
    required TResult orElse(),
  }) {
    if (updateTodo != null) {
      return updateTodo(this);
    }
    return orElse();
  }
}

abstract class _UpdateTodo implements TodoEvent {
  const factory _UpdateTodo(TodoDTO todo) = _$_UpdateTodo;

  TodoDTO get todo;
  @JsonKey(ignore: true)
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodoStateTearOff {
  const _$TodoStateTearOff();

  _TodoState call(
      {TodoStatus status = TodoStatus.initial,
      List<Todo> todos = const [],
      Failure? failure}) {
    return _TodoState(
      status: status,
      todos: todos,
      failure: failure,
    );
  }
}

/// @nodoc
const $TodoState = _$TodoStateTearOff();

/// @nodoc
mixin _$TodoState {
  TodoStatus get status => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
  $Res call({TodoStatus status, List<Todo> todos, Failure? failure});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? todos = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc
abstract class _$TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$TodoStateCopyWith(
          _TodoState value, $Res Function(_TodoState) then) =
      __$TodoStateCopyWithImpl<$Res>;
  @override
  $Res call({TodoStatus status, List<Todo> todos, Failure? failure});
}

/// @nodoc
class __$TodoStateCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$TodoStateCopyWith<$Res> {
  __$TodoStateCopyWithImpl(_TodoState _value, $Res Function(_TodoState) _then)
      : super(_value, (v) => _then(v as _TodoState));

  @override
  _TodoState get _value => super._value as _TodoState;

  @override
  $Res call({
    Object? status = freezed,
    Object? todos = freezed,
    Object? failure = freezed,
  }) {
    return _then(_TodoState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TodoStatus,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$_TodoState extends _TodoState with DiagnosticableTreeMixin {
  _$_TodoState(
      {this.status = TodoStatus.initial, this.todos = const [], this.failure})
      : super._();

  @JsonKey()
  @override
  final TodoStatus status;
  @JsonKey()
  @override
  final List<Todo> todos;
  @override
  final Failure? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TodoState(status: $status, todos: $todos, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TodoState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.todos, todos) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(todos),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$TodoStateCopyWith<_TodoState> get copyWith =>
      __$TodoStateCopyWithImpl<_TodoState>(this, _$identity);
}

abstract class _TodoState extends TodoState {
  factory _TodoState({TodoStatus status, List<Todo> todos, Failure? failure}) =
      _$_TodoState;
  _TodoState._() : super._();

  @override
  TodoStatus get status;
  @override
  List<Todo> get todos;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$TodoStateCopyWith<_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
