import 'package:hive_flutter/hive_flutter.dart';

part 'wallet.g.dart';

@HiveType(typeId: 0)
class UserWallet {
  @HiveField(0)
  final String blockchain;
  @HiveField(1)
  final String publicKey;
  @HiveField(2)
  final String privateKey;

  UserWallet({required this.blockchain, required this.publicKey, required this.privateKey});
}