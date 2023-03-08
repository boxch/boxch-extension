import 'package:boxch_extension/start/cubit/start_cubit.dart';
import 'package:boxch_extension/widgets/start_screen_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final StartCubit startCubit = context.read<StartCubit>();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: Container(
          height: 55.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border(
              bottom: BorderSide(
                width: 0.5,
                color: Theme.of(context).hintColor.withOpacity(0.2)
              )
            )
          ),
          alignment: Alignment.center,
          child: Text("Boxch", style: TextStyle(fontSize: 16.0, color: Theme.of(context).hintColor)),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/logo512.png", height: 100.0, width: 100.0),
                // ignore: prefer_const_constructors
                SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                StartScreenButton(onTap: () => startCubit.moveOnCreateWallet(), title: "Create Wallet", subtitle: "Generate a new wallet address"),
                const SizedBox(height: 16.0),
                StartScreenButton(onTap: () => startCubit.moveOnRestoreWallet(), title: "Restore Wallet", subtitle: "Import an existing wallet"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}