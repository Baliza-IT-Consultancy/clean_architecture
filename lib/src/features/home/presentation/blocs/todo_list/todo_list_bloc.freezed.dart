// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoListEventTearOff {
  const _$TodoListEventTearOff();

  _Started load() {
    return const _Started();
  }

  _AddTodo addTodo(Todo todo) {
    return _AddTodo(
      todo,
    );
  }

  _RemoveTodo removeTodo(String todoId) {
    return _RemoveTodo(
      todoId,
    );
  }

  _UpdateTodo updateTodo(Todo todo) {
    return _UpdateTodo(
      todo,
    );
  }
}

/// @nodoc
const $TodoListEvent = _$TodoListEventTearOff();

/// @nodoc
mixin _$TodoListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(Todo todo) updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
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
abstract class $TodoListEventCopyWith<$Res> {
  factory $TodoListEventCopyWith(
          TodoListEvent value, $Res Function(TodoListEvent) then) =
      _$TodoListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoListEventCopyWithImpl<$Res>
    implements $TodoListEventCopyWith<$Res> {
  _$TodoListEventCopyWithImpl(this._value, this._then);

  final TodoListEvent _value;
  // ignore: unused_field
  final $Res Function(TodoListEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TodoListEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TodoListEvent.load()';
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
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
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

abstract class _Started implements TodoListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AddTodoCopyWith<$Res> {
  factory _$AddTodoCopyWith(_AddTodo value, $Res Function(_AddTodo) then) =
      __$AddTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$AddTodoCopyWithImpl<$Res> extends _$TodoListEventCopyWithImpl<$Res>
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
              as Todo,
    ));
  }
}

/// @nodoc

class _$_AddTodo implements _AddTodo {
  const _$_AddTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoListEvent.addTodo(todo: $todo)';
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
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return addTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return addTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
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

abstract class _AddTodo implements TodoListEvent {
  const factory _AddTodo(Todo todo) = _$_AddTodo;

  Todo get todo;
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
class __$RemoveTodoCopyWithImpl<$Res> extends _$TodoListEventCopyWithImpl<$Res>
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

class _$_RemoveTodo implements _RemoveTodo {
  const _$_RemoveTodo(this.todoId);

  @override
  final String todoId;

  @override
  String toString() {
    return 'TodoListEvent.removeTodo(todoId: $todoId)';
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
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return removeTodo(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return removeTodo?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
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

abstract class _RemoveTodo implements TodoListEvent {
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
  $Res call({Todo todo});
}

/// @nodoc
class __$UpdateTodoCopyWithImpl<$Res> extends _$TodoListEventCopyWithImpl<$Res>
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
              as Todo,
    ));
  }
}

/// @nodoc

class _$_UpdateTodo implements _UpdateTodo {
  const _$_UpdateTodo(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoListEvent.updateTodo(todo: $todo)';
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
    required TResult Function(Todo todo) addTodo,
    required TResult Function(String todoId) removeTodo,
    required TResult Function(Todo todo) updateTodo,
  }) {
    return updateTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
  }) {
    return updateTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Todo todo)? addTodo,
    TResult Function(String todoId)? removeTodo,
    TResult Function(Todo todo)? updateTodo,
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

abstract class _UpdateTodo implements TodoListEvent {
  const factory _UpdateTodo(Todo todo) = _$_UpdateTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$UpdateTodoCopyWith<_UpdateTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TodoListStateTearOff {
  const _$TodoListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded({required List<Todo> todos}) {
    return _Loaded(
      todos: todos,
    );
  }

  _Error error({required Failure failure}) {
    return _Error(
      failure: failure,
    );
  }
}

/// @nodoc
const $TodoListState = _$TodoListStateTearOff();

/// @nodoc
mixin _$TodoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TodoListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TodoListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TodoListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TodoListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_Loaded(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.todos});

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoListState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TodoListState {
  const factory _Loaded({required List<Todo> todos}) = _$_Loaded;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TodoListStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TodoListState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TodoListState {
  const factory _Error({required Failure failure}) = _$_Error;

  Failure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
