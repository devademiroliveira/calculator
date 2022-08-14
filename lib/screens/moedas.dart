import 'package:calculator/screens/tabs/tab_cambio.dart';
import 'package:calculator/screens/tabs/tab_cripto.dart';
import 'package:flutter/material.dart';

class Moedas extends StatefulWidget {
  const Moedas({Key? key}) : super(key: key);

  @override
  State<Moedas> createState() => _MoedasState();
}

class _MoedasState extends State<Moedas> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: const [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.attach_money,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.paid,
                  color: Colors.deepPurple,
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                TabCambio(),
                TabCripto(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
