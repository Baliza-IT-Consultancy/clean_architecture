// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoFilterEventTearOff {
  const _$TodoFilterEventTearOff();

  _ShowAll showAll() {
    return const _ShowAll();
  }

  _ShowActive showActive() {
    return const _ShowActive();
  }

  _ShowCompleted showCompleted() {
    return const _ShowCompleted();
  }
}

/// @nodoc
const $TodoFilterEvent = _$TodoFilterEventTearOff();

/// @nodoc
mixin _$TodoFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showAll,
    required TResult Function() showActive,
    required TResult Function() showCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowAll value) showAll,
    required TResult Function(_ShowActive value) showActive,
    required TResult Function(_ShowCompleted value) showCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFilterEventCopyWith<$Res> {
  factory $TodoFilterEventCopyWith(
          TodoFilterEvent value, $Res Function(TodoFilterEvent) then) =
      _$TodoFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoFilterEventCopyWithImpl<$Res>
    implements $TodoFilterEventCopyWith<$Res> {
  _$TodoFilterEventCopyWithImpl(this._value, this._then);

  final TodoFilterEvent _value;
  // ignore: unused_field
  final $Res Function(TodoFilterEvent) _then;
}

/// @nodoc
abstract class _$ShowAllCopyWith<$Res> {
  factory _$ShowAllCopyWith(_ShowAll value, $Res Function(_ShowAll) then) =
      __$ShowAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowAllCopyWithImpl<$Res> extends _$TodoFilterEventCopyWithImpl<$Res>
    implements _$ShowAllCopyWith<$Res> {
  __$ShowAllCopyWithImpl(_ShowAll _value, $Res Function(_ShowAll) _then)
      : super(_value, (v) => _then(v as _ShowAll));

  @override
  _ShowAll get _value => super._value as _ShowAll;
}

/// @nodoc

class _$_ShowAll implements _ShowAll {
  const _$_ShowAll();

  @override
  String toString() {
    return 'TodoFilterEvent.showAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showAll,
    required TResult Function() showActive,
    required TResult Function() showCompleted,
  }) {
    return showAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
  }) {
    return showAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
    required TResult orElse(),
  }) {
    if (showAll != null) {
      return showAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowAll value) showAll,
    required TResult Function(_ShowActive value) showActive,
    required TResult Function(_ShowCompleted value) showCompleted,
  }) {
    return showAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
  }) {
    return showAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
    required TResult orElse(),
  }) {
    if (showAll != null) {
      return showAll(this);
    }
    return orElse();
  }
}

abstract class _ShowAll implements TodoFilterEvent {
  const factory _ShowAll() = _$_ShowAll;
}

/// @nodoc
abstract class _$ShowActiveCopyWith<$Res> {
  factory _$ShowActiveCopyWith(
          _ShowActive value, $Res Function(_ShowActive) then) =
      __$ShowActiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowActiveCopyWithImpl<$Res>
    extends _$TodoFilterEventCopyWithImpl<$Res>
    implements _$ShowActiveCopyWith<$Res> {
  __$ShowActiveCopyWithImpl(
      _ShowActive _value, $Res Function(_ShowActive) _then)
      : super(_value, (v) => _then(v as _ShowActive));

  @override
  _ShowActive get _value => super._value as _ShowActive;
}

/// @nodoc

class _$_ShowActive implements _ShowActive {
  const _$_ShowActive();

  @override
  String toString() {
    return 'TodoFilterEvent.showActive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowActive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showAll,
    required TResult Function() showActive,
    required TResult Function() showCompleted,
  }) {
    return showActive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
  }) {
    return showActive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
    required TResult orElse(),
  }) {
    if (showActive != null) {
      return showActive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowAll value) showAll,
    required TResult Function(_ShowActive value) showActive,
    required TResult Function(_ShowCompleted value) showCompleted,
  }) {
    return showActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
  }) {
    return showActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
    required TResult orElse(),
  }) {
    if (showActive != null) {
      return showActive(this);
    }
    return orElse();
  }
}

abstract class _ShowActive implements TodoFilterEvent {
  const factory _ShowActive() = _$_ShowActive;
}

/// @nodoc
abstract class _$ShowCompletedCopyWith<$Res> {
  factory _$ShowCompletedCopyWith(
          _ShowCompleted value, $Res Function(_ShowCompleted) then) =
      __$ShowCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShowCompletedCopyWithImpl<$Res>
    extends _$TodoFilterEventCopyWithImpl<$Res>
    implements _$ShowCompletedCopyWith<$Res> {
  __$ShowCompletedCopyWithImpl(
      _ShowCompleted _value, $Res Function(_ShowCompleted) _then)
      : super(_value, (v) => _then(v as _ShowCompleted));

  @override
  _ShowCompleted get _value => super._value as _ShowCompleted;
}

/// @nodoc

class _$_ShowCompleted implements _ShowCompleted {
  const _$_ShowCompleted();

  @override
  String toString() {
    return 'TodoFilterEvent.showCompleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShowCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showAll,
    required TResult Function() showActive,
    required TResult Function() showCompleted,
  }) {
    return showCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
  }) {
    return showCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showAll,
    TResult Function()? showActive,
    TResult Function()? showCompleted,
    required TResult orElse(),
  }) {
    if (showCompleted != null) {
      return showCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowAll value) showAll,
    required TResult Function(_ShowActive value) showActive,
    required TResult Function(_ShowCompleted value) showCompleted,
  }) {
    return showCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
  }) {
    return showCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowAll value)? showAll,
    TResult Function(_ShowActive value)? showActive,
    TResult Function(_ShowCompleted value)? showCompleted,
    required TResult orElse(),
  }) {
    if (showCompleted != null) {
      return showCompleted(this);
    }
    return orElse();
  }
}

abstract class _ShowCompleted implements TodoFilterEvent {
  const factory _ShowCompleted() = _$_ShowCompleted;
}

/// @nodoc
class _$TodoFilterStateTearOff {
  const _$TodoFilterStateTearOff();

  _TodoFilterState call(
      {TodoFilterType type = TodoFilterType.all, TodoFilter? filter}) {
    return _TodoFilterState(
      type: type,
      filter: filter,
    );
  }
}

/// @nodoc
const $TodoFilterState = _$TodoFilterStateTearOff();

/// @nodoc
mixin _$TodoFilterState {
  TodoFilterType get type => throw _privateConstructorUsedError;
  TodoFilter? get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoFilterStateCopyWith<TodoFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoFilterStateCopyWith<$Res> {
  factory $TodoFilterStateCopyWith(
          TodoFilterState value, $Res Function(TodoFilterState) then) =
      _$TodoFilterStateCopyWithImpl<$Res>;
  $Res call({TodoFilterType type, TodoFilter? filter});
}

/// @nodoc
class _$TodoFilterStateCopyWithImpl<$Res>
    implements $TodoFilterStateCopyWith<$Res> {
  _$TodoFilterStateCopyWithImpl(this._value, this._then);

  final TodoFilterState _value;
  // ignore: unused_field
  final $Res Function(TodoFilterState) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TodoFilterType,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoFilter?,
    ));
  }
}

/// @nodoc
abstract class _$TodoFilterStateCopyWith<$Res>
    implements $TodoFilterStateCopyWith<$Res> {
  factory _$TodoFilterStateCopyWith(
          _TodoFilterState value, $Res Function(_TodoFilterState) then) =
      __$TodoFilterStateCopyWithImpl<$Res>;
  @override
  $Res call({TodoFilterType type, TodoFilter? filter});
}

/// @nodoc
class __$TodoFilterStateCopyWithImpl<$Res>
    extends _$TodoFilterStateCopyWithImpl<$Res>
    implements _$TodoFilterStateCopyWith<$Res> {
  __$TodoFilterStateCopyWithImpl(
      _TodoFilterState _value, $Res Function(_TodoFilterState) _then)
      : super(_value, (v) => _then(v as _TodoFilterState));

  @override
  _TodoFilterState get _value => super._value as _TodoFilterState;

  @override
  $Res call({
    Object? type = freezed,
    Object? filter = freezed,
  }) {
    return _then(_TodoFilterState(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TodoFilterType,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TodoFilter?,
    ));
  }
}

/// @nodoc

class _$_TodoFilterState implements _TodoFilterState {
  _$_TodoFilterState({this.type = TodoFilterType.all, this.filter});

  @JsonKey()
  @override
  final TodoFilterType type;
  @override
  final TodoFilter? filter;

  @override
  String toString() {
    return 'TodoFilterState(type: $type, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoFilterState &&
            const DeepCollectionEquality().equals(other.type, type) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(type), filter);

  @JsonKey(ignore: true)
  @override
  _$TodoFilterStateCopyWith<_TodoFilterState> get copyWith =>
      __$TodoFilterStateCopyWithImpl<_TodoFilterState>(this, _$identity);
}

abstract class _TodoFilterState implements TodoFilterState {
  factory _TodoFilterState({TodoFilterType type, TodoFilter? filter}) =
      _$_TodoFilterState;

  @override
  TodoFilterType get type;
  @override
  TodoFilter? get filter;
  @override
  @JsonKey(ignore: true)
  _$TodoFilterStateCopyWith<_TodoFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
