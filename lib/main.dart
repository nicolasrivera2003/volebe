import 'package:flutter/material.dart';
import 'package:volebe_market/pages/market.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Market(),
      debugShowCheckedModeBanner: false,
    );
  }
}
