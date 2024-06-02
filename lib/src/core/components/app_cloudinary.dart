import 'dart:math';

import 'package:cloudinary_public/cloudinary_public.dart';

Future<String> cloudinaryPublic(String imgPath) async {
  int random = Random().nextInt(1000);

  final cloudinary = CloudinaryPublic('dvn9z2jmy', 'lkma7rx1');

  CloudinaryResponse res = await cloudinary.uploadFile(
    CloudinaryFile.fromFile(
      imgPath,
      folder: "$imgPath$random",
    ),
  );

  return res.secureUrl;
}