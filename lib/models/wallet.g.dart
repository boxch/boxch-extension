// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserWalletAdapter extends TypeAdapter<UserWallet> {
  @override
  final int typeId = 0;

  @override
  UserWallet read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserWallet(
      blockchain: fields[0] as String,
      publicKey: fields[1] as String,
      privateKey: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserWallet obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.blockchain)
      ..writeByte(1)
      ..write(obj.publicKey)
      ..writeByte(2)
      ..write(obj.privateKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserWalletAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
