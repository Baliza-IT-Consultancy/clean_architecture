// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CreateAccountCopyWith<$Res> {
  factory _$$_CreateAccountCopyWith(
          _$_CreateAccount value, $Res Function(_$_CreateAccount) then) =
      __$$_CreateAccountCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupDTO payload});
}

/// @nodoc
class __$$_CreateAccountCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CreateAccount>
    implements _$$_CreateAccountCopyWith<$Res> {
  __$$_CreateAccountCopyWithImpl(
      _$_CreateAccount _value, $Res Function(_$_CreateAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_CreateAccount(
      null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SignupDTO,
    ));
  }
}

/// @nodoc

class _$_CreateAccount implements _CreateAccount {
  const _$_CreateAccount(this.payload);

  @override
  final SignupDTO payload;

  @override
  String toString() {
    return 'AuthEvent.createAccount(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAccount &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAccountCopyWith<_$_CreateAccount> get copyWith =>
      __$$_CreateAccountCopyWithImpl<_$_CreateAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return createAccount(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return createAccount?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class _CreateAccount implements AuthEvent {
  const factory _CreateAccount(final SignupDTO payload) = _$_CreateAccount;

  SignupDTO get payload;
  @JsonKey(ignore: true)
  _$$_CreateAccountCopyWith<_$_CreateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoggedInCopyWith<$Res> {
  factory _$$_LoggedInCopyWith(
          _$_LoggedIn value, $Res Function(_$_LoggedIn) then) =
      __$$_LoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginDTO payload});
}

/// @nodoc
class __$$_LoggedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoggedIn>
    implements _$$_LoggedInCopyWith<$Res> {
  __$$_LoggedInCopyWithImpl(
      _$_LoggedIn _value, $Res Function(_$_LoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$_LoggedIn(
      null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginDTO,
    ));
  }
}

/// @nodoc

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn(this.payload);

  @override
  final LoginDTO payload;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedIn &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      __$$_LoggedInCopyWithImpl<_$_LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return loggedIn(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return loggedIn?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthEvent {
  const factory _LoggedIn(final LoginDTO payload) = _$_LoggedIn;

  LoginDTO get payload;
  @JsonKey(ignore: true)
  _$$_LoggedInCopyWith<_$_LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginSuccessCopyWith<$Res> {
  factory _$$_LoginSuccessCopyWith(
          _$_LoginSuccess value, $Res Function(_$_LoginSuccess) then) =
      __$$_LoginSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_LoginSuccessCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoginSuccess>
    implements _$$_LoginSuccessCopyWith<$Res> {
  __$$_LoginSuccessCopyWithImpl(
      _$_LoginSuccess _value, $Res Function(_$_LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_LoginSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_LoginSuccess implements _LoginSuccess {
  const _$_LoginSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.loginSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginSuccessCopyWith<_$_LoginSuccess> get copyWith =>
      __$$_LoginSuccessCopyWithImpl<_$_LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return loginSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return loginSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements AuthEvent {
  const factory _LoginSuccess(final User user) = _$_LoginSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$_LoginSuccessCopyWith<_$_LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WaitingCopyWith<$Res> {
  factory _$$_WaitingCopyWith(
          _$_Waiting value, $Res Function(_$_Waiting) then) =
      __$$_WaitingCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_WaitingCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Waiting>
    implements _$$_WaitingCopyWith<$Res> {
  __$$_WaitingCopyWithImpl(_$_Waiting _value, $Res Function(_$_Waiting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Waiting(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Waiting implements _Waiting {
  const _$_Waiting(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.waiting(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Waiting &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WaitingCopyWith<_$_Waiting> get copyWith =>
      __$$_WaitingCopyWithImpl<_$_Waiting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return waiting(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return waiting?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting implements AuthEvent {
  const factory _Waiting(final User user) = _$_Waiting;

  User get user;
  @JsonKey(ignore: true)
  _$$_WaitingCopyWith<_$_Waiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorOccurredCopyWith<$Res> {
  factory _$$_ErrorOccurredCopyWith(
          _$_ErrorOccurred value, $Res Function(_$_ErrorOccurred) then) =
      __$$_ErrorOccurredCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$_ErrorOccurredCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ErrorOccurred>
    implements _$$_ErrorOccurredCopyWith<$Res> {
  __$$_ErrorOccurredCopyWithImpl(
      _$_ErrorOccurred _value, $Res Function(_$_ErrorOccurred) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$_ErrorOccurred(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorOccurred implements _ErrorOccurred {
  const _$_ErrorOccurred(this.message, this.code);

  @override
  final String message;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.authError(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorOccurred &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorOccurredCopyWith<_$_ErrorOccurred> get copyWith =>
      __$$_ErrorOccurredCopyWithImpl<_$_ErrorOccurred>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return authError(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return authError?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class _ErrorOccurred implements AuthEvent {
  const factory _ErrorOccurred(final String message, final String code) =
      _$_ErrorOccurred;

  String get message;
  String get code;
  @JsonKey(ignore: true)
  _$$_ErrorOccurredCopyWith<_$_ErrorOccurred> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoggedOutCopyWith<$Res> {
  factory _$$_LoggedOutCopyWith(
          _$_LoggedOut value, $Res Function(_$_LoggedOut) then) =
      __$$_LoggedOutCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_LoggedOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LoggedOut>
    implements _$$_LoggedOutCopyWith<$Res> {
  __$$_LoggedOutCopyWithImpl(
      _$_LoggedOut _value, $Res Function(_$_LoggedOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_LoggedOut(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut({this.message, this.code});

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'AuthEvent.logout(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedOut &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedOutCopyWith<_$_LoggedOut> get copyWith =>
      __$$_LoggedOutCopyWithImpl<_$_LoggedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return logout(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return logout?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthEvent {
  const factory _LoggedOut({final String? message, final String? code}) =
      _$_LoggedOut;

  String? get message;
  String? get code;
  @JsonKey(ignore: true)
  _$$_LoggedOutCopyWith<_$_LoggedOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FinishLogoutCopyWith<$Res> {
  factory _$$_FinishLogoutCopyWith(
          _$_FinishLogout value, $Res Function(_$_FinishLogout) then) =
      __$$_FinishLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FinishLogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_FinishLogout>
    implements _$$_FinishLogoutCopyWith<$Res> {
  __$$_FinishLogoutCopyWithImpl(
      _$_FinishLogout _value, $Res Function(_$_FinishLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FinishLogout implements _FinishLogout {
  const _$_FinishLogout();

  @override
  String toString() {
    return 'AuthEvent.finishLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FinishLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return finishLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return finishLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (finishLogout != null) {
      return finishLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return finishLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return finishLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (finishLogout != null) {
      return finishLogout(this);
    }
    return orElse();
  }
}

abstract class _FinishLogout implements AuthEvent {
  const factory _FinishLogout() = _$_FinishLogout;
}

/// @nodoc
abstract class _$$_RestartProcessCopyWith<$Res> {
  factory _$$_RestartProcessCopyWith(
          _$_RestartProcess value, $Res Function(_$_RestartProcess) then) =
      __$$_RestartProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RestartProcessCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_RestartProcess>
    implements _$$_RestartProcessCopyWith<$Res> {
  __$$_RestartProcessCopyWithImpl(
      _$_RestartProcess _value, $Res Function(_$_RestartProcess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RestartProcess implements _RestartProcess {
  const _$_RestartProcess();

  @override
  String toString() {
    return 'AuthEvent.restartProcess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RestartProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SignupDTO payload) createAccount,
    required TResult Function(LoginDTO payload) loggedIn,
    required TResult Function(User user) loginSuccess,
    required TResult Function(User user) waiting,
    required TResult Function(String message, String code) authError,
    required TResult Function(String? message, String? code) logout,
    required TResult Function() finishLogout,
    required TResult Function() restartProcess,
  }) {
    return restartProcess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SignupDTO payload)? createAccount,
    TResult? Function(LoginDTO payload)? loggedIn,
    TResult? Function(User user)? loginSuccess,
    TResult? Function(User user)? waiting,
    TResult? Function(String message, String code)? authError,
    TResult? Function(String? message, String? code)? logout,
    TResult? Function()? finishLogout,
    TResult? Function()? restartProcess,
  }) {
    return restartProcess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SignupDTO payload)? createAccount,
    TResult Function(LoginDTO payload)? loggedIn,
    TResult Function(User user)? loginSuccess,
    TResult Function(User user)? waiting,
    TResult Function(String message, String code)? authError,
    TResult Function(String? message, String? code)? logout,
    TResult Function()? finishLogout,
    TResult Function()? restartProcess,
    required TResult orElse(),
  }) {
    if (restartProcess != null) {
      return restartProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateAccount value) createAccount,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_ErrorOccurred value) authError,
    required TResult Function(_LoggedOut value) logout,
    required TResult Function(_FinishLogout value) finishLogout,
    required TResult Function(_RestartProcess value) restartProcess,
  }) {
    return restartProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateAccount value)? createAccount,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_Waiting value)? waiting,
    TResult? Function(_ErrorOccurred value)? authError,
    TResult? Function(_LoggedOut value)? logout,
    TResult? Function(_FinishLogout value)? finishLogout,
    TResult? Function(_RestartProcess value)? restartProcess,
  }) {
    return restartProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateAccount value)? createAccount,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_Waiting value)? waiting,
    TResult Function(_ErrorOccurred value)? authError,
    TResult Function(_LoggedOut value)? logout,
    TResult Function(_FinishLogout value)? finishLogout,
    TResult Function(_RestartProcess value)? restartProcess,
    required TResult orElse(),
  }) {
    if (restartProcess != null) {
      return restartProcess(this);
    }
    return orElse();
  }
}

abstract class _RestartProcess implements AuthEvent {
  const factory _RestartProcess() = _$_RestartProcess;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
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
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatingCopyWith<$Res> {
  factory _$$_AuthenticatingCopyWith(
          _$_Authenticating value, $Res Function(_$_Authenticating) then) =
      __$$_AuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticating>
    implements _$$_AuthenticatingCopyWith<$Res> {
  __$$_AuthenticatingCopyWithImpl(
      _$_Authenticating _value, $Res Function(_$_Authenticating) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticating implements _Authenticating {
  const _$_Authenticating();

  @override
  String toString() {
    return 'AuthState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements AuthState {
  const factory _Authenticating() = _$_Authenticating;
}

/// @nodoc
abstract class _$$_PreUnauthenticatedCopyWith<$Res> {
  factory _$$_PreUnauthenticatedCopyWith(_$_PreUnauthenticated value,
          $Res Function(_$_PreUnauthenticated) then) =
      __$$_PreUnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_PreUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_PreUnauthenticated>
    implements _$$_PreUnauthenticatedCopyWith<$Res> {
  __$$_PreUnauthenticatedCopyWithImpl(
      _$_PreUnauthenticated _value, $Res Function(_$_PreUnauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_PreUnauthenticated(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PreUnauthenticated implements _PreUnauthenticated {
  const _$_PreUnauthenticated([this.message, this.code]);

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'AuthState.preUnauthenticated(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreUnauthenticated &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreUnauthenticatedCopyWith<_$_PreUnauthenticated> get copyWith =>
      __$$_PreUnauthenticatedCopyWithImpl<_$_PreUnauthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return preUnauthenticated(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return preUnauthenticated?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) {
    if (preUnauthenticated != null) {
      return preUnauthenticated(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return preUnauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return preUnauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (preUnauthenticated != null) {
      return preUnauthenticated(this);
    }
    return orElse();
  }
}

abstract class _PreUnauthenticated implements AuthState {
  const factory _PreUnauthenticated(
      [final String? message, final String? code]) = _$_PreUnauthenticated;

  String? get message;
  String? get code;
  @JsonKey(ignore: true)
  _$$_PreUnauthenticatedCopyWith<_$_PreUnauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unauthenticated>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_Unauthenticated(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated([this.message, this.code]);

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'AuthState.unauthenticated(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unauthenticated &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthenticatedCopyWith<_$_Unauthenticated> get copyWith =>
      __$$_UnauthenticatedCopyWithImpl<_$_Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return unauthenticated(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return unauthenticated?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated([final String? message, final String? code]) =
      _$_Unauthenticated;

  String? get message;
  String? get code;
  @JsonKey(ignore: true)
  _$$_UnauthenticatedCopyWith<_$_Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PreAuthenticatedCopyWith<$Res> {
  factory _$$_PreAuthenticatedCopyWith(
          _$_PreAuthenticated value, $Res Function(_$_PreAuthenticated) then) =
      __$$_PreAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_PreAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_PreAuthenticated>
    implements _$$_PreAuthenticatedCopyWith<$Res> {
  __$$_PreAuthenticatedCopyWithImpl(
      _$_PreAuthenticated _value, $Res Function(_$_PreAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_PreAuthenticated(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_PreAuthenticated implements _PreAuthenticated {
  const _$_PreAuthenticated(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.preAuthenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreAuthenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreAuthenticatedCopyWith<_$_PreAuthenticated> get copyWith =>
      __$$_PreAuthenticatedCopyWithImpl<_$_PreAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return preAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return preAuthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) {
    if (preAuthenticated != null) {
      return preAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return preAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return preAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (preAuthenticated != null) {
      return preAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _PreAuthenticated implements AuthState {
  const factory _PreAuthenticated(final User user) = _$_PreAuthenticated;

  User get user;
  @JsonKey(ignore: true)
  _$$_PreAuthenticatedCopyWith<_$_PreAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_Authenticated(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final User user) = _$_Authenticated;

  User get user;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthErrorCopyWith<$Res> {
  factory _$$_AuthErrorCopyWith(
          _$_AuthError value, $Res Function(_$_AuthError) then) =
      __$$_AuthErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String code});
}

/// @nodoc
class __$$_AuthErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthError>
    implements _$$_AuthErrorCopyWith<$Res> {
  __$$_AuthErrorCopyWithImpl(
      _$_AuthError _value, $Res Function(_$_AuthError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$_AuthError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthError implements _AuthError {
  const _$_AuthError(this.message, this.code);

  @override
  final String message;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthState.error(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthErrorCopyWith<_$_AuthError> get copyWith =>
      __$$_AuthErrorCopyWithImpl<_$_AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? message, String? code) preUnauthenticated,
    required TResult Function(String? message, String? code) unauthenticated,
    required TResult Function(User user) preAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message, String code) error,
  }) {
    return error(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? message, String? code)? preUnauthenticated,
    TResult? Function(String? message, String? code)? unauthenticated,
    TResult? Function(User user)? preAuthenticated,
    TResult? Function(User user)? authenticated,
    TResult? Function(String message, String code)? error,
  }) {
    return error?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? message, String? code)? preUnauthenticated,
    TResult Function(String? message, String? code)? unauthenticated,
    TResult Function(User user)? preAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message, String code)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_PreUnauthenticated value) preUnauthenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_PreAuthenticated value) preAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_AuthError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_PreAuthenticated value)? preAuthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_AuthError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_PreUnauthenticated value)? preUnauthenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_PreAuthenticated value)? preAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_AuthError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthError implements AuthState {
  const factory _AuthError(final String message, final String code) =
      _$_AuthError;

  String get message;
  String get code;
  @JsonKey(ignore: true)
  _$$_AuthErrorCopyWith<_$_AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}
