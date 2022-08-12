import 'package:flutter/material.dart';

import '../../models/cambio_repository.dart';

class TabCambio extends StatelessWidget {
  const TabCambio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = CambioRepository.tabela;

    return SizedBox(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int cambio) {
          return ListTile(
            leading: Image.asset(
              tabela[cambio].icone,
            ),
            title: Text(
              tabela[cambio].nome,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            trailing: Text(
              'R\$ ${(tabela[cambio].preco.toString())}',
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, ___) => const Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
