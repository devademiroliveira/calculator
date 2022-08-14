import 'dart:math';

import 'package:calculator/screens/calculator.dart';
import 'package:calculator/screens/imc.dart';
import 'package:calculator/screens/moedas.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  Color color = Colors.deepPurple;

  List<ScreenHiddenDrawer> _pages = [];

  final selectTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: Colors.deepPurple,
  );
  final defaultTextStyle = const TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 22,
    color: Colors.black54,
  );
  void changeColor() {
    setState(() {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Calculadora',
            baseStyle: defaultTextStyle,
            selectedStyle: selectTextStyle,
            colorLineSelected: Colors.white,
          ),
          const Calculator()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Imc',
            baseStyle: defaultTextStyle,
            selectedStyle: selectTextStyle,
            colorLineSelected: Colors.white,
          ),
          const Imc()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Moedas',
            baseStyle: defaultTextStyle,
            selectedStyle: selectTextStyle,
            colorLineSelected: Colors.white,
          ),
          const Moedas()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      //backgroundColorContent: color,
      backgroundColorAppBar: color,
      actionsAppBar: [
        IconButton(
          onPressed: () {
            changeColor();
          },
          icon: const Icon(Icons.color_lens),
        )
      ],
      backgroundColorMenu: color,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 45,
      //boxShadow: const [],
    );
  }
}
