import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:url_launcher/url_launcher.dart';

okShowToast(BuildContext context) {
  showToastWidget(
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
                    height: 70.0,
                    width: 70.0,
                           alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                               borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.check_circle_outline_outlined, size: 32.0, color: Colors.green),
                            Text("copy", style: TextStyle(color: Theme.of(context).hintColor, fontSize: 12.0)),
                          ],
                        ),
                          ),
      ),
        duration: const Duration(seconds: 2),
         handleTouch: true,
         dismissOtherToast: true,
         position: ToastPosition.center);
}

okSwapShowToast({required String tx}) {
  showToastWidget(
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64.0),
          child: Container(
                  height: 70,
                         alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                             borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16.0),
                          const Icon(Icons.check_circle_outline, color: Colors.greenAccent, size: 35.0),
                          const SizedBox(width: 16.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                             children: [
                          const Text('Confirmed', style: TextStyle(color: Colors.white)),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('${(tx.length > 20) ? tx.substring(0, 20) : tx}...'),
                              const SizedBox(width: 8.0),
                            Material(
                                color:Colors.transparent,
                                child: InkWell(
                                  onTap: () async { 
                                    await launchUrl(Uri.parse("https://solscan.io/tx/$tx")); },
                                  child: Container(
                                child: const Text('view', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
                                )),
                              )],
                          )
                  ],
              ),
                        ],
                      ),
                        ),
            ),
        duration: const Duration(seconds: 5),
         handleTouch: true,
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}

foundShowToast() {
  showToastWidget(
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64.0),
          child: Container(
                  height: 70,
                         alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                             borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16.0),
                          const Icon(Icons.check_circle_outline, color: Colors.greenAccent, size: 35.0),
                          const SizedBox(width: 16.0),
                          const Text('Found', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                        ),
            ),
        duration: const Duration(seconds: 1),
         handleTouch: true,
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}

errorShowToast({error}) {
  showToastWidget(
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Container(
              height: 70,
                     alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                         borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16.0),
                      const Icon(Icons.clear_outlined, color: Colors.redAccent, size: 35.0),
                      const SizedBox(width: 16.0),
                      (error != null) ? Text('$error', maxLines: 5, style: const TextStyle(fontSize: 10.0),) : const SizedBox()
                    ],
                  ),
                    ),
        ),
        duration: const Duration(seconds: 10),
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}


processingShowToast({required status, required message}) {
  showToastWidget(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical:  64.0),
          child: Container(
              height: 70,
                     alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                         borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16.0),
                      const SizedBox(height: 25.0, width: 25.0, child: CircularProgressIndicator(color: Colors.grey)),
                      const SizedBox(width: 16.0),
                      Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                         children: [
                      Text(
                      status,
                             style: const TextStyle(color: Colors.white),
                         ),
                      Text(message, style: const TextStyle(fontSize: 12.0), maxLines: 2)
                           ],
          ),
                    ],
                  ),
                    ),
        ),
        duration: const Duration(minutes: 2),
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}

processingNoMessageShowToast({required status}) {
  showToastWidget(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical:  64.0),
          child: Container(
              height: 70,
                     alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                         borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16.0),
                      const SizedBox(height: 25.0, width: 25.0, child: CircularProgressIndicator(color: Colors.grey)),
                      const SizedBox(width: 16.0),
                      Text(
                      status,
                             style: const TextStyle(color: Colors.white),
                         ),
                    ],
                  ),
                    ),
        ),
        duration: const Duration(minutes: 2),
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}

notifyShowToast({required status, required Icon icon}) {
  showToastWidget(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical:  64.0),
          child: Container(
              height: 70,
                     alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                         borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16.0),
                      SizedBox(height: 25.0, width: 25.0, child: icon),
                      const SizedBox(width: 16.0),
                      Text(
                      status,
                             style: const TextStyle(color: Colors.white),
                         ),
                    ],
                  ),
                    ),
        ),
        duration: const Duration(seconds: 3),
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}

notSavedContactsShowToast({required status}) {
  showToastWidget(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical:  64.0),
          child: Container(
              height: 70,
                     alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 30, 87, 79),
                         borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 16.0),
                      const SizedBox(height: 25.0, width: 25.0, child: Icon(Icons.info, color: Colors.yellow)),
                      const SizedBox(width: 16.0),
                      Container(
                        width: 300.0,
                        child: Text(
                        status,
                               style: const TextStyle(color: Colors.white),
                           ),
                      ),
                    ],
                  ),
                    ),
        ),
        duration: const Duration(seconds: 4),
         dismissOtherToast: true,
         position: ToastPosition.bottom);
}

soonShowToast() {
  showToastWidget(
      Container(
        height: 70.0,
        width: 80.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.build_outlined),
            const SizedBox(height: 5.0),
            const Text(
              'soon',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      position: ToastPosition.center);
}