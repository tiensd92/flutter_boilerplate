import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/application/application.dart';
import 'package:flutter_boilerplate/application/presentation/di/configure_dependencies.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp());
}
