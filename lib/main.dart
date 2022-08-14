import 'package:calculator/models/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final Color colorScaffold = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: colorScaffold,
      ),
      debugShowCheckedModeBanner: false,
      home: const HiddenDrawer(),
    );
  }
}
