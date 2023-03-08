import 'package:boxch_extension/start/cubit/start_cubit.dart';
import 'package:boxch_extension/widgets/create_restore_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestoreWalletScreen extends StatelessWidget {
  RestoreWalletScreen({ Key? key, }) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final StartCubit cubit = context.read<StartCubit>();
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
                        color: Colors.grey.withOpacity(0.15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.question_answer_outlined, color: Colors.grey),
                          SizedBox(width: 8.0),
                          Text(
                            'Enter your mnemonic 12 or 24 words',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),),
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        child: TextField(
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
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
                              child: CreateRestoreButton(title: "Restore Wallet", onTap: () async => cubit.logInWallet(mnemonic: _controller.text)),
                          ),
                      ),
                    ),
                  ],
                ),
            );
  }
}