import 'package:flutter/material.dart';
import 'package:vjezba_1/provider/shared_preferences.dart';
import 'package:vjezba_1/shared/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreference.init();
  runApp(const App());
}
