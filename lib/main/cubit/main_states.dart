import 'package:boxch_extension/models/cryptocurrency.dart';

abstract class MainStates {}

class LoadingScreenState extends MainStates {}

class StartScreenState extends MainStates {}

class CreateWalletState extends MainStates {}

class ImportWalletState extends MainStates {}

class CreatePasswordScreenState extends MainStates {}

class PasswordScreenState extends MainStates {}

class UserScreenState extends MainStates {
  final List<Cryptocurrency> tokens;
  final String totalBalance;

  UserScreenState({required this.tokens, required this.totalBalance});
}

class ErrorScreenState extends MainStates {
  final String? error;
  ErrorScreenState({required this.error});
}