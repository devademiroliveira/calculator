import 'moeda_cripto.dart';

class CriptoRepository {
  static List<Crtipto> tabela = [
    Crtipto(
      icone: 'image/bitcoin.png',
      nome: 'Bitcoin',
      sigla: 'BTC',
      preco: 122385.64,
    ),
    Crtipto(
      icone: 'image/cardano.png',
      nome: 'Cardano',
      sigla: 'ADA',
      preco: 2.73,
    ),
    Crtipto(
      icone: 'image/ethereum.png',
      nome: 'Ethereum',
      sigla: 'ETH',
      preco: 9493.53,
    ),
    Crtipto(
      icone: 'image/litecoin.png',
      nome: 'Litecoin',
      sigla: 'LTC',
      preco: 315.62,
    ),
    Crtipto(
      icone: 'image/usdcoin.png',
      nome: 'USD Coin',
      sigla: 'USDC',
      preco: 5.09,
    ),
    Crtipto(
      icone: 'image/xrp.png',
      nome: 'XRP',
      sigla: 'XRP',
      preco: 1.94,
    ),
  ];
}
