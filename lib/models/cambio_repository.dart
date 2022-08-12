import 'moeda_cambio.dart';

class CambioRepository {
  static List<Cambio> tabela = [
    Cambio(
      icone: 'image/dinar.png',
      nome: 'Dinar Kuwait',
      sigla: 'KWD',
      preco: 16.74,
    ),
    Cambio(
      icone: 'image/dolar.png',
      nome: 'Dolar Americano',
      sigla: 'USD',
      preco: 5.13,
    ),
    Cambio(
      icone: 'image/euro.png',
      nome: 'Euro',
      sigla: 'EUR',
      preco: 5.30,
    ),
    Cambio(
      icone: 'image/libra.png',
      nome: 'Libra Esterlina',
      sigla: 'GBP',
      preco: 6.27,
    ),
    Cambio(
      icone: 'image/yen.png',
      nome: 'Yen',
      sigla: 'JPY',
      preco: 0.03,
    ),
    Cambio(
      icone: 'image/franco_suico.png',
      nome: 'Franco Suiço',
      sigla: 'CHF',
      preco: 5.46,
    ),
    Cambio(
      icone: 'image/dolar_canadense.png',
      nome: 'Dolar Canadense',
      sigla: 'CAD',
      preco: 4.03,
    ),
  ];
}
