import 'package:flutter/material.dart';

class AppDecoration {
  final BoxDecoration decoration;
  AppDecoration({required this.decoration});
  // factory AppDecoration.displayFile(context, File file) {
  //     return AppDecoration(
  //       decoration: BoxDecoration(
  //         gradient: LinearGradient(
  //           colors: [
  //             Colors.black.withOpacity(0.2),
  //             Colors.transparent,
  //           ],
  //           begin: Alignment.bottomCenter,
  //           end: Alignment.topCenter,
  //         ),
  //         image: DecorationImage(
  //           fit: BoxFit.cover,
  //           image: FileImage(
  //             file,
  //           ),
  //         ),
  //       ),
  //     );
  // }
}
