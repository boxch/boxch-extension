import 'package:boxch_extension/auth/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterPasswordScreen extends StatelessWidget {
  EnterPasswordScreen({ Key? key, }) : super(key: key);

  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
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
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/logo512.png", height: 100.0, width: 100.0),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                                height: 60.0,
                                width: MediaQuery.of(context).size.width,
                                alignment: Alignment.centerLeft,
                                child: TextField(
                                  onSubmitted: (value) => cubit.checkPassword(password: _controllerPassword.text),
                                  controller: _controllerPassword,
                                  style: const TextStyle(
                                      fontSize: 21.0, fontWeight: FontWeight.bold),
                                      obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Enter your password",
                                      hintStyle: const TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w100),
                                      filled: true,
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                              width: 1.0),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          )),),
                                ),
                              ),
                        const SizedBox(height: 16.0),
                        InkWell(
                          // onTap: () => cubit.resetPassword(privateKey: privateKey),
                          child: Text("Forgot password", style: TextStyle(color: Theme.of(context).hintColor.withOpacity(0.5))),
                        ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}