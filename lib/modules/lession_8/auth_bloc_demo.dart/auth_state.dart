part of 'auth_cubit.dart';

// success | failure | loading | initial
abstract class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {}

class LoginSuccess extends AuthState {
  final String username;

  LoginSuccess({required this.username});
}

class LoginFailed extends AuthState {
  final String errorMessage;

  LoginFailed({required this.errorMessage});
}

class LoginIP extends AuthState {}
