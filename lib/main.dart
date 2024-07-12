import 'package:flutter/material.dart';
import 'package:my_new_app/modules/E00/E00S00001/E00S00001.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: E00S00001(),
    );
  }
}
