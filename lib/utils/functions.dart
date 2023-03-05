import 'package:flutter/material.dart';

replaceWindow(BuildContext context, window) =>
    Navigator.push(context, MaterialPageRoute(
      fullscreenDialog: true,
      builder: (context) => window));


String userGreeting() {
  final int data = DateTime.now().hour;
  var greeting = "";
      if (data >= 4 && data < 10) {
        greeting = "good morning";
      } else if (data >= 10 && data < 17) {
        greeting = "good afternoon";
      } else if (data >= 17 && data < 22) {
        greeting = "good evening";
      } else {
        greeting = "good night";
      }
    return greeting;
}

Color setColorForSwapText(BuildContext context, {required num impct}) {
  var color = Theme.of(context).hintColor;
  if (impct >= 2 && impct < 5) {
    color = Colors.amber;
  } else if (impct >= 5) {
    color = Colors.red;
  }

  return color;
}


class StatusType {
  static const success = "Success";
  static const error = "Error";
}


