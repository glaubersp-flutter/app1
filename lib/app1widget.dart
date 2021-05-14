import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
    ).modular();
  }
}
