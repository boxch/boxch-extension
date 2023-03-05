abstract class StartStates {}

class LogInStartState extends StartStates {}

class CreateWalletStartState extends StartStates {
  final String mnemonic;
  CreateWalletStartState({required this.mnemonic});
}

class RestoreWalletStartState extends StartStates {}

class PasswordStartState extends StartStates {}