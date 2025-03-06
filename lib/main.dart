import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers.dart';
import 'views/login_screen.dart';

void main() {
  runApp(MultiProvider(providers: providers, child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
