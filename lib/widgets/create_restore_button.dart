import 'package:flutter/material.dart';

class CreateRestoreButton extends StatefulWidget {
  final String title;
  final Function() onTap;
  const CreateRestoreButton(
      {Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  State<CreateRestoreButton> createState() => _CreateRestoreButtonState();
}

class _CreateRestoreButtonState extends State<CreateRestoreButton> {

  bool arrowState = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onHover: (value) {
          arrowState = value;
          setState(() {});
          },
        onTap: widget.onTap,
        child: Container(
          height: 55.0,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.transparent),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(widget.title,
                    style: TextStyle(
                        fontSize: 18.0, color: Theme.of(context).hintColor)),
               arrowState ? Icon(Icons.arrow_right_alt_rounded,
                    color: Theme.of(context).hintColor) : const SizedBox(),
              ]),
        ),
      ),
    );
  }
}
