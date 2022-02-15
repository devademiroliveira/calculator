import 'dart:io';
import 'package:flutter/material.dart';

imc() {
  print('____ sua altura? ___');
  var textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura!);

  print('____ sua peso? ____');
  var textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);

  var calcImc = peso / (altura * altura);

  print(calcImc);

  if (calcImc < 18.5) {
    print('Magreza');
  } else if (calcImc > 18.5 && calcImc < 24.9) {
    print('Normal');
  } else if (calcImc > 25 && calcImc < 29.9) {
    print('Sobrepeso');
  } else if (calcImc > 30 && calcImc < 39.9) {
    print('Obesidade');
  } else if (calcImc > 40) {
    print('Osediade grave');
  }
}
