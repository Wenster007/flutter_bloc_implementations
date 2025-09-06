part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();
}

final class AuthenticationUnknown extends AuthenticationState {
  @override
  List<Object> get props => [];
}

final class AuthenticatedUser extends AuthenticationState {
  final User user;

  AuthenticatedUser(this.user);

  @override
  List<Object> get props => [user];
}

final class UnauthenticatedUser extends AuthenticationState {

  UnauthenticatedUser();

  @override
  List<Object> get props => [];
}