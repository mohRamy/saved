import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/config/application.dart';

Future<void> main() async {
  await Application().initialAppLication();
  runApp(const PortfolioApp());
}
