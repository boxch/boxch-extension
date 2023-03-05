abstract class AuthStates {}

class InputPasswordState extends AuthStates {}

class ValidPasswordState extends AuthStates {}

class InvalidPasswordState extends AuthStates {}

class CreatePasswordState extends AuthStates {
  final String? message;
  CreatePasswordState({this.message});
}