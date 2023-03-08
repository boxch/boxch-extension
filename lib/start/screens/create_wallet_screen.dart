import 'package:boxch_extension/start/cubit/start_cubit.dart';
import 'package:boxch_extension/widgets/create_restore_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateWalletScreen extends StatelessWidget {
  final String mnemonic;
  CreateWalletScreen({ Key? key, required this.mnemonic }) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final StartCubit cubit = context.read<StartCubit>();
    _controller.text = mnemonic;
    return Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        focusColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                                icon: Icon(Icons.keyboard_arrow_left_rounded, color: Theme.of(context).hintColor),
                                onPressed: () => cubit.backToLogInStartScreen(),
                              ),
                  ),
              ),
              body: Column(
                  children: [
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 55.0,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.amber.withOpacity(0.15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.info_outline, color: Colors.amber),
                          SizedBox(width: 8.0),
                          Text(
                            'Save mnemonic in a safe place',
                            style: TextStyle(color: Colors.amber),
                          ),
                        ],
                      ),
                    ),),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        child: TextFormField(
                          controller: _controller,
                          minLines: 4,
                          maxLines: 5,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.3))),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).hintColor.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.camera_alt_outlined, color: Theme.of(context).hintColor),
                                const SizedBox(width: 16.0),
                                Text("Don't take a screenshot", style: TextStyle(color: Theme.of(context).hintColor)),
                              ],
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              children: [
                                Icon(Icons.message_outlined, color: Theme.of(context).hintColor),
                                const SizedBox(width: 16.0),
                                Text("Write down on paper", style: TextStyle(color: Theme.of(context).hintColor)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
                              child: CreateRestoreButton(title: "Create Wallet", onTap: () async => cubit.logInWallet()),
                          ),
                      ),
                    ),
                  ],
                ),
            );
  }
}