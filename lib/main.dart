import 'package:flutter/material.dart';
import 'auth/confirm_code/view.dart';
import 'core/logic/helper_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mudad",
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: const ConfirmCodeView(),
    );
  }
}
