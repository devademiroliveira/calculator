import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key, required this.cb}) : super(key: key);

  final Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: <Widget>[
          ButtonRow(
            buttons: [
              Button.big(
                text: 'AC',
                color: Button.dark,
                cb: cb,
              ),
              Button(
                text: '%',
                color: Button.dark,
                cb: cb,
              ),
              Button.operation(
                text: '/',
                cb: cb,
              ),
            ],
          ),
          const SizedBox(height: 2),
          ButtonRow(
            buttons: [
              Button(
                text: '7',
                cb: cb,
              ),
              Button(
                text: '8',
                cb: cb,
              ),
              Button(
                text: '9',
                cb: cb,
              ),
              Button.operation(
                text: '*',
                cb: cb,
              ),
            ],
          ),
          const SizedBox(height: 2),
          ButtonRow(
            buttons: [
              Button(
                text: '4',
                cb: cb,
              ),
              Button(
                text: '5',
                cb: cb,
              ),
              Button(
                text: '6',
                cb: cb,
              ),
              Button.operation(
                text: '-',
                cb: cb,
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          ButtonRow(
            buttons: [
              Button(
                text: '1',
                cb: cb,
              ),
              Button(
                text: '2',
                cb: cb,
              ),
              Button(
                text: '3',
                cb: cb,
              ),
              Button.operation(
                text: '+',
                cb: cb,
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          ButtonRow(
            buttons: [
              Button.big(
                text: '0',
                cb: cb,
              ),
              Button(
                text: '.',
                cb: cb,
              ),
              Button.operation(
                text: '=',
                cb: cb,
              ),
            ],
          )
        ],
      ),
    );
  }
}
