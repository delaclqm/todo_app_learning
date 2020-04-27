// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_SignedOut value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_SignedOut value),
    @required Result orElse(),
  });
}

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthCheckRequested authCheckRequested() {
    return const _AuthCheckRequested();
  }

  _SignedOut signedOut() {
    return const _SignedOut();
  }
}

const $AuthEvent = _$AuthEventTearOff();

class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements AuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(_AuthCheckRequested value),
    @required Result signedOut(_SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(_AuthCheckRequested value),
    Result signedOut(_SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthEvent {
  const factory _SignedOut() = _$_SignedOut;
}

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Inital value),
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Inital value),
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    @required Result orElse(),
  });
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Inital initial() {
    return const _Inital();
  }

  _Authenticated authenticated(User user) {
    return _Authenticated(
      user,
    );
  }

  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }
}

const $AuthState = _$AuthStateTearOff();

class _$_Inital implements _Inital {
  const _$_Inital();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Inital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Inital value),
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Inital value),
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Inital implements AuthState {
  const factory _Inital() = _$_Inital;
}

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$_Authenticated copyWith({
    Object user = freezed,
  }) {
    return _$_Authenticated(
      user == freezed ? this.user : user as User,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Inital value),
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Inital value),
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(User user) = _$_Authenticated;

  User get user;

  _Authenticated copyWith({User user});
}

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(User user),
    @required Result unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(User user),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Inital value),
    @required Result authenticated(_Authenticated value),
    @required Result unauthenticated(_Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Inital value),
    Result authenticated(_Authenticated value),
    Result unauthenticated(_Unauthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}
