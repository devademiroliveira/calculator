import 'package:flutter/material.dart';

class Imc extends StatefulWidget {
  const Imc({Key? key}) : super(key: key);

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  String _resultado = 'Preencha os campos para saber seu IMC';
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  Widget constrTextField(String label, TextEditingController c) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.deepPurple,
            fontSize: 30,
          )),
      style: const TextStyle(
        color: Colors.deepPurple,
        fontSize: 24,
      ),
      keyboardType: TextInputType.number,
      controller: c,
    );
  }

  void _calcular() {
    double peso = double.parse(pesoController.text.replaceAll(',', '.'));
    double altura = double.parse(alturaController.text.replaceAll(',', '.'));
    double imc = peso / (altura * altura);

    // IMC 	Classificação 	Obesidade (grau)
    // Menor que 18,5 	Magreza 	0
    // Entre 18,5 e 24,9 	Normal 	0
    // Entre 25,0 e 29,9 	Sobrepeso 	I
    // Entre 30,0 e 39,9 	Obesidade 	II
    // Maior que 40,0 	Obesidade Grave 	III

    setState(() {
      if (imc < 18.5) {
        _resultado = 'Magreza/Score:  ${(imc.toStringAsPrecision(4))}';
      } else if (imc >= 18.6 && imc <= 24.9) {
        _resultado = 'Normal/Score:  ${(imc.toStringAsPrecision(4))}';
      } else if (imc >= 25.0 && imc <= 29.9) {
        _resultado = 'Sobrepeso 1/Score:  ${(imc.toStringAsPrecision(4))}';
      } else if (imc >= 30.0 && imc <= 39.9) {
        _resultado = 'Obesidade 2/Score: ${(imc.toStringAsPrecision(4))}';
      } else if (imc >= 40) {
        _resultado = 'Obesidade Grave 3/Score: ${(imc.toStringAsPrecision(4))}';
      }
    });
  }

  void _limpar() {
    setState(() {
      pesoController.text = '';
      alturaController.text = '';
      _resultado = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 150.0,
                  color: Colors.deepPurple,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    child: Text(
                      _resultado,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                )
              ],
            ),
            constrTextField('Peso', pesoController),
            const Divider(),
            constrTextField('Altura', alturaController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 70,
                    child: ElevatedButton(
                      autofocus: true,
                      onPressed: () {
                        _calcular();
                      },
                      child: const Text(
                        'Calcular',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        _limpar();
                      },
                      child: const Text(
                        'Limpar',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 26,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
