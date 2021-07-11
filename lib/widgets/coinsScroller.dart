import 'package:coinzie/widgets/coinCard.dart';
import 'package:flutter/material.dart';

class CoinsScroller extends StatelessWidget {
  const CoinsScroller();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                CoinCard(
                    'Bitcoin',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Bitcoin-icon.png',
                    '35,879.40',
                    '0.82'),
                CoinCard(
                    'Ethereum',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/128/Ethereum-icon.png',
                    '2,367.07',
                    '-0.88'),
                CoinCard(
                    'Cardano',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Cardano-icon.png',
                    '1.447',
                    '-1.278'),
                CoinCard(
                    'Dogecoin',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/256/Dogecoin-DOGE-icon.png',
                    '0.3108',
                    '1.393'),
                CoinCard(
                    'Tron',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/256/TRON-TRX-icon.png',
                    '0.0674',
                    '-0.33'),
                CoinCard(
                    'Binance',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Binance-Coin-icon.png',
                    '338.41',
                    '-0.30'),
                CoinCard(
                    'Monero',
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency/256/Monero-icon.png',
                    '243.17',
                    '-2.36')
              ],
            )),
      ),
    );
  }
}
