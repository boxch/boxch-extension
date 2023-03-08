import 'package:flutter/material.dart';

class MnemonicWidget extends StatefulWidget {
  final String mnemonic;
  const MnemonicWidget({ Key? key, required this.mnemonic }) : super(key: key);

  @override
  MnemonicWidgetState createState() => MnemonicWidgetState();
}

class MnemonicWidgetState extends State<MnemonicWidget> {


 List<String> getWidgetFromMnemonicList() {
    return widget.mnemonic.split(' ').toList();
  }


  @override
  void initState() {
    getWidgetFromMnemonicList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Theme.of(context).hintColor.withOpacity(0.3),
                          width: 1.0
                        )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[0]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[1]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[2]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[3]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[4]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[5]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[6]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[7]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[8]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[9]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[10]),
                              ),
                              Container(
                                height: 40.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Theme.of(context).hintColor.withOpacity(0.3)
                                ),
                                child: Text(getWidgetFromMnemonicList()[11]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
      );
  }
}