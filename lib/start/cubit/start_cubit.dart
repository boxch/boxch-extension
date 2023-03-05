import 'package:boxch_extension/models/wallet.dart';
import 'package:boxch_extension/services/blockchains.dart';
import 'package:boxch_extension/start/cubit/start_states.dart';
import 'package:boxch_extension/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:bip39/bip39.dart' as bip39;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';

class StartCubit extends Cubit<StartStates> {
  StartCubit({initialState})
      : super(Hive.box(boxWallets).isNotEmpty
            ? PasswordStartState()
            : LogInStartState());

  Future<void> moveOnCreateWallet() async {
    emit(CreateWalletStartState(mnemonic: bip39.generateMnemonic(strength: 128)));
  }

  Future<void> moveOnRestoreWallet() async {
    emit(RestoreWalletStartState());
  }

  Future<void> backToLogInStartScreen() async {
    emit(LogInStartState());
  }

  Future<void> logInWallet({String? mnemonic}) async {
    mnemonic ??= bip39.generateMnemonic();
    final Ed25519HDKeyPair publicKeyFromMnemonic =
        await Wallet.fromMnemonic(mnemonic);
    List<UserWallet> userWallets =
        (Hive.box(boxWallets).get(boxWalletsKey) == null)
            ? <UserWallet>[]
            : Hive.box(boxWallets).get(boxWalletsKey);
            
    var privateKey = await publicKeyFromMnemonic.extract();
    var currentWallet = UserWallet(
        blockchain: blockchains[Blockchain.solana]!,
        publicKey: publicKeyFromMnemonic.publicKey.toBase58(),
        privateKey: base58encode(privateKey.bytes));
    
    userWallets.add(currentWallet);

    await Hive.box(boxWallets).put(boxWalletsKey, userWallets);
    await Hive.box(boxWallets).put(boxCurrentWallet, currentWallet);

    emit(PasswordStartState());
  }
}
