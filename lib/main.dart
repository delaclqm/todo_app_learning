import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app_learning/injection.dart';

import 'presentation/app_widget.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppWidget());
}
