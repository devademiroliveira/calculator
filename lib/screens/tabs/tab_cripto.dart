import 'package:flutter/material.dart';

import '../../models/cripto_repository.dart';

class TabCripto extends StatelessWidget {
  const TabCripto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = CriptoRepository.tabela;

    return SizedBox(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int cripto) {
          return ListTile(
            leading: Image.asset(
              tabela[cripto].icone,
            ),
            title: Text(
              tabela[cripto].nome,
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
            trailing: Text(
              'R\$ ${(tabela[cripto].preco.toString())}',
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
