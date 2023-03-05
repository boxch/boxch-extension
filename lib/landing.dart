import 'package:boxch_extension/auth/cubit/auth_cubit.dart';
import 'package:boxch_extension/auth/screens/password_screen.dart';
import 'package:boxch_extension/main/cubit/main_cubit.dart';
import 'package:boxch_extension/main/screens/main_screen.dart';
import 'package:boxch_extension/start/screens/create_wallet_screen.dart';
import 'package:boxch_extension/start/screens/restore_wallet_screen.dart';
import 'package:boxch_extension/start/screens/start_screen.dart';
import 'package:boxch_extension/start/cubit/start_cubit.dart';
import 'package:boxch_extension/start/cubit/start_states.dart';
import 'package:boxch_extension/theme/theme_cubit.dart';
import 'package:boxch_extension/theme/theme_states.dart';
import 'package:boxch_extension/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

class Landing extends StatelessWidget {
  const Landing({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
            return OKToast(
              position: ToastPosition.center,
                child:  MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: state.ligthTheme
                              ? apptheme[AppTheme.ligth]
                              : apptheme[AppTheme.dark],
              home: BlocProvider<StartCubit>(
                create: (context) => StartCubit(),
                child: BlocBuilder<StartCubit, StartStates>(
                  builder: (context, state) {

                    if (state is LogInStartState) {
                      return const StartScreen();
                    }

                    if (state is CreateWalletStartState) {
                      return CreateWalletScreen(mnemonic: state.mnemonic);
                    }

                    if (state is RestoreWalletStartState) {
                      return RestoreWalletScreen();
                    }

                    if (state is PasswordStartState) {
                      return BlocProvider<AuthCubit>(
                        create: (context) => AuthCubit(),
                        child: const PasswordScreen());
                    }


                    return Container();
                  },
                ))));
        }));
  }
}