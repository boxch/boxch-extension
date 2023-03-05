import 'package:boxch_extension/landing.dart';
import 'package:boxch_extension/models/wallet.dart';
import 'package:boxch_extension/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive
    ..initFlutter()
     ..registerAdapter(UserWalletAdapter());

  await Hive.openBox(boxPassword);
  await Hive.openBox(boxWallets);
  await Hive.openBox(boxAppSettings);

  runApp(const Landing());
}
