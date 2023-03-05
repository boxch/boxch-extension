import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TokenListTile extends StatelessWidget {
  final String? image;
  final String title;
  final String subtitle;
  final String trailingTitle;
  final String trailingSubtitle;
  final onPressed;
  final Color backgroundColor;

  const TokenListTile(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.trailingTitle,
      required this.trailingSubtitle,
      required this.onPressed,
      required this.backgroundColor})
      : super();


    Widget getImageIcon({required String? image}) {
       if (image?.split('.').last == 'svg') {
        return SvgPicture.network(
                    image!,
                    width: 30.0, height: 30.0, fit: BoxFit.fill); 
       } else if (image?.split('.').last == 'png' || image?.split('.').last == 'jpg' || image?.split('.').last == 'jpeg') {
         return Image.network(
                      image!,
                      width: 30.0,
                      height: 30.0,
                      fit: BoxFit.fill,
          );
       } 
       return Container(height: 30.0, width: 30.0, alignment: Alignment.center, child: Text("?"));
      }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: InkWell(
        highlightColor: Theme.of(context).scaffoldBackgroundColor,
        overlayColor: MaterialStateProperty.all(
            Theme.of(context).scaffoldBackgroundColor),
        onTap: onPressed,
        child: Padding(
            padding: EdgeInsets.only(left: 13.0, right: 16.0, bottom: 10.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: getImageIcon(image: image),
                          ),
                          ),
                          SizedBox(width: 5.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title, style: TextStyle(fontSize: 15.0)),
                              Text(subtitle,
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      color: Theme.of(context).hintColor)),
                            ],
                          ),
                        ],
                      ),
                    ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(trailingTitle, style: TextStyle(fontSize: 16.0)),
                    Text(trailingSubtitle,
                        style: TextStyle(
                            fontSize: 10.0,
                            )),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
