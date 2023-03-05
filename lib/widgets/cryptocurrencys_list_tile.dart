import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptocurrencysListTile extends StatelessWidget {
  final String? image;
  final String title;
  final String subtitle;
  final onPressed;

  const CryptocurrencysListTile(
      {super.key, required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});


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
       return Container(height: 30.0, width: 30.0, alignment: Alignment.center, child: const Text("?"));
      }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
      highlightColor: Theme.of(context).primaryColor,
        overlayColor: MaterialStateProperty.all(
            Theme.of(context).scaffoldBackgroundColor),
      onTap: onPressed,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: getImageIcon(image: image),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, style: const TextStyle(fontSize: 16.0)),
                            Text(subtitle,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Theme.of(context).hintColor)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(),
            ],
          )),
    ),
    );
  }
}
