import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  const CoinCard(
      this.coinName, this.coinIconLink, this.coinPrice, this.priceChange);

  final String coinName;
  final String coinIconLink;
  final String coinPrice;
  final String priceChange;

  @override
  Widget build(BuildContext context) {
    final double cardHeight = MediaQuery.of(context).size.height * 0.30 - 50;

    return Container(
      width: 120,
      height: cardHeight,
      margin: EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.network(
              coinIconLink,
              width: 30,
            ),
            Text(
              coinName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '\$' + coinPrice,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              priceChange + '%',
              style: TextStyle(
                  color: double.parse(priceChange) > 0
                      ? Colors.green.shade400
                      : Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
