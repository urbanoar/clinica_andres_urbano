import 'package:flutter/material.dart';
import 'Views/0sesion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Sesion(),
    );
  }
}
