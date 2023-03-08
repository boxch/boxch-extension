abstract class AuthStates {}

class InputPasswordState extends AuthStates {
  final bool error;

  InputPasswordState({required this.error});
}

class ValidPasswordState extends AuthStates {}


class CreatePasswordState extends AuthStates {
  final String? message;
  CreatePasswordState({this.message});
}