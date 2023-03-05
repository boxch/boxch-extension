import 'package:flutter/material.dart';

class StartScreenButton extends StatefulWidget {
  final String title;
  final String subtitle;
  final Function() onTap;
  const StartScreenButton({Key? key, required this.onTap, required this.title, required this.subtitle}) : super(key: key);

  @override
  State<StartScreenButton> createState() => _StartScreenButtonState();
}

class _StartScreenButtonState extends State<StartScreenButton> {
  bool arrowState = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10.0),
      child: InkWell(
        onHover: (value) {
          arrowState = value;
          setState(() {});
        },
        borderRadius: BorderRadius.circular(10.0),
        onTap: widget.onTap,
        child: Container(
          height: 70.0,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,
                      style: TextStyle(
                          fontSize: 18.0, color: Theme.of(context).hintColor)),
                  Text(widget.subtitle,
                      style: TextStyle(
                          fontSize: 12.0, color: Theme.of(context).hintColor.withOpacity(0.5))),
                ],
              ),
              arrowState ? Icon(Icons.arrow_right_alt, color: Theme.of(context).hintColor) : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
