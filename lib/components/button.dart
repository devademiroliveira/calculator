import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const padrao = Color.fromRGBO(170, 55, 145, 3);
  static const operacao = Color.fromRGBO(250, 158, 13, 1);

  const Button({
    Key? key,
    required this.text,
    this.big = false,
    this.color = padrao,
    required this.cb,
  }) : super(key: key);

  const Button.big({
    Key? key,
    required this.text,
    this.big = true,
    this.color = padrao,
    required this.cb,
  }) : super(key: key);

  const Button.operation({
    Key? key,
    required this.text,
    this.big = false,
    this.color = operacao,
    required this.cb,
  }) : super(key: key);

  const Button.bigOp({
    Key? key,
    required this.text,
    this.big = true,
    this.color = operacao,
    required this.cb,
  }) : super(key: key);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.w300,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
