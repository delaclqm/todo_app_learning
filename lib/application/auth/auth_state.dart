part of 'auth_bloc.dart';

@freezed 
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Inital;
  const factory AuthState.authenticated(User user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
