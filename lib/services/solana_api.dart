import 'package:boxch_extension/utils/constants.dart';
import 'package:hive/hive.dart';
import 'package:solana/solana.dart';

class SolanaApi {


  var box = Hive.box(boxWallets);

  Future funCreateUserWallet(String mnemonic) async {
    var fromMnemonic = await Wallet.fromMnemonic(mnemonic);
    return fromMnemonic.address;
  }

  Future funGetTokenBalance({required String mintAddress}) async {
    // try {
    //   if (mintAddress == SOL) {
    //     var balance = await mainnetSolanaClient.rpcClient.getBalance(wallet.address, commitment: Commitment.confirmed);
    //     return double.parse(balance.toString()) / pow(10, 9);
    //   } else {
    //     var balance = await mainnetSolanaClient.rpcClient.getTokenAccountBalance(mintAddress, commitment: Commitment.confirmed
    //     );
    //     return double.parse(balance.value.uiAmountString!);
    //   }
    // } catch (e) {
    //   return 0;
    // }
  }

   Future funGetDecimal({required String mintAddress}) async {
    // try {
    //   if (mintAddress == SOL) {
    //     return 9;
    //   } else {
    //     var token = await mainnetSolanaClient.getTokenBalance(owner: Ed25519HDPublicKey.fromBase58(wallet.address), mint: Ed25519HDPublicKey.fromBase58(mintAddress));
    //     return token.decimals;
    //   }
    // } catch (e) {
    //   return 0;
    // }
  }

  Future funSendSolanaTransaction({required String addressDestination, required int amount}) async {
  //   var message = Message(instructions: [
  //       SystemInstruction.transfer(
  //         fundingAccount: Ed25519HDPublicKey.fromBase58(wallet.address), 
  //         recipientAccount: Ed25519HDPublicKey.fromBase58(addressDestination), 
  //         lamports: amount)
  //     ]);

  //   try {
  //    var signature = await mainnetSolanaClient.rpcClient.signAndSendTransaction(message, [
  //       wallet,
  //     ]);
  //     return signature;
  //   } catch (_) {
  //     return false;
  //   }
  // }

  // Future funSendTokenTransaction({
  //   required String addressDestination,
  //   required int amount,
  //   required mintAddress,
  // }) async {
  //   var sourceAssociatedTokenAddress = await mainnetSolanaClient.getAssociatedTokenAccount(owner: Ed25519HDPublicKey.fromBase58(wallet.address), mint: Ed25519HDPublicKey.fromBase58(mintAddress));

  //   var hasAssociatedDestAccount = await mainnetSolanaClient.hasAssociatedTokenAccount(owner: Ed25519HDPublicKey.fromBase58(addressDestination), mint: Ed25519HDPublicKey.fromBase58(mintAddress));
   
  //   Ed25519HDPublicKey destinationAssociatedTokenAddress;
  //   if (hasAssociatedDestAccount) {
  //     var getAccount = await mainnetSolanaClient.getAssociatedTokenAccount(owner: Ed25519HDPublicKey.fromBase58(addressDestination), mint: Ed25519HDPublicKey.fromBase58(mintAddress));
  //     destinationAssociatedTokenAddress = Ed25519HDPublicKey.fromBase58(getAccount!.pubkey);
  //     } else {
  //     destinationAssociatedTokenAddress = await findAssociatedTokenAddress(owner: Ed25519HDPublicKey.fromBase58(addressDestination), mint: Ed25519HDPublicKey.fromBase58(mintAddress));
  //   }
    
  //    try {
  //      if (hasAssociatedDestAccount == false) {
  //        final message = Message(instructions: [
  //         AssociatedTokenAccountInstruction.createAccount(
  //         funder: Ed25519HDPublicKey.fromBase58(wallet.address), 
  //         address: destinationAssociatedTokenAddress, 
  //         owner: Ed25519HDPublicKey.fromBase58(addressDestination), 
  //         mint: Ed25519HDPublicKey.fromBase58(mintAddress)),
  //         TokenInstruction.transfer(
  //            source: Ed25519HDPublicKey.fromBase58(sourceAssociatedTokenAddress!.pubkey), 
  //           destination: destinationAssociatedTokenAddress, 
  //           owner: Ed25519HDPublicKey.fromBase58(wallet.address), 
  //           amount: amount)
  //       ]);
  //     var signature = await mainnetSolanaClient.rpcClient.signAndSendTransaction(message, [
  //       wallet,
  //     ]);
  //     await mainnetSolanaClient.waitForSignatureStatus(signature, status: Commitment.confirmed);
  //     return signature;
  //      } else {
  //        final message = Message(instructions: [
  //         TokenInstruction.transfer(
  //            source: Ed25519HDPublicKey.fromBase58(sourceAssociatedTokenAddress!.pubkey), 
  //           destination: destinationAssociatedTokenAddress, 
  //           owner: Ed25519HDPublicKey.fromBase58(wallet.address), 
  //           amount: amount)
  //       ]);
  //     var signature = await mainnetSolanaClient.rpcClient.signAndSendTransaction(message, [
  //       wallet,
  //     ]);
  //     return signature;
  //     }
  //   } catch (_) {
  //     return false;
  //   }
  }


  Future funGetTokenAccountsByOwner() async {
    // final ProgramAccountsResult tokenAccountsByOwner = await mainnetSolanaClient.rpcClient.getTokenAccountsByOwner(wallet.address, const TokenAccountsFilter.byProgramId(TokenProgram.programId), encoding: Encoding.jsonParsed, commitment: Commitment.processed);
    // return tokenAccountsByOwner;
  }

  Future funGetTokenAccountsByWallet({required String wallet}) async {
    // final ProgramAccountsResult tokenAccountsByOwner = await mainnetSolanaClient.rpcClient.getTokenAccountsByOwner(wallet, const TokenAccountsFilter.byProgramId(TokenProgram.programId), encoding: Encoding.jsonParsed, commitment: Commitment.processed);
    // return tokenAccountsByOwner;
  }

  Future funGetTokenAccountsByOwnerMint({required String mint}) async {
    // final ProgramAccountsResult tokenAccountsByOwner = await mainnetSolanaClient.rpcClient.getTokenAccountsByOwner(wallet.address, TokenAccountsFilter.byMint(mint), encoding: Encoding.jsonParsed, commitment: Commitment.processed);
    // return tokenAccountsByOwner;
  }


  Future funCloseTokenAccountAddress({required String tokenAddress}) async {
    // var associatedTokenAccount = await mainnetSolanaClient.getAssociatedTokenAccount(owner: Ed25519HDPublicKey.fromBase58(wallet.address), mint: Ed25519HDPublicKey.fromBase58(tokenAddress));
    // var message = Message(instructions: [
    //             TokenInstruction.closeAccount(
    //               accountToClose: Ed25519HDPublicKey.fromBase58(associatedTokenAccount!.pubkey), 
    //               destination: Ed25519HDPublicKey.fromBase58(wallet.address), 
    //               owner: Ed25519HDPublicKey.fromBase58(wallet.address))
    //          ]);

    //   try {
    //     return await mainnetSolanaClient.rpcClient.signAndSendTransaction(message, [wallet]);
    //   } catch (_) {
    //     return false;
    //   }
  }

  Future closeSmallBalanceAccount({required String mint, required double amount}) async {
    // var mintAssociatedAddressSource = await mainnetSolanaClient.getAssociatedTokenAccount(owner: Ed25519HDPublicKey.fromBase58(wallet.address), mint: Ed25519HDPublicKey.fromBase58(mint), commitment: Commitment.finalized);
    // var tokenBalance = await mainnetSolanaClient.getTokenBalance(owner: Ed25519HDPublicKey.fromBase58(wallet.address), mint: Ed25519HDPublicKey.fromBase58(mint));
    
    // final message = Message(instructions: [
    //       TokenInstruction.burn(
    //         amount: int.parse((amount * pow(10, tokenBalance.decimals)).toStringAsFixed(0)), 
    //         accountToBurnFrom: Ed25519HDPublicKey.fromBase58(mintAssociatedAddressSource!.pubkey), 
    //         mint: Ed25519HDPublicKey.fromBase58(mint), 
    //         owner: wallet.publicKey),
    //       TokenInstruction.closeAccount(accountToClose: Ed25519HDPublicKey.fromBase58(mintAssociatedAddressSource.pubkey),
    //        destination: Ed25519HDPublicKey.fromBase58(wallet.address), 
    //        owner: Ed25519HDPublicKey.fromBase58(wallet.address))
    //     ]);

    // try {
    //   return await mainnetSolanaClient.rpcClient.signAndSendTransaction(message, [wallet]);
    // } catch (_) {
    //   return false;
    // }
  }
}
