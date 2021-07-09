import 'package:flutter/material.dart';

import 'coinsScroller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Popular Coins',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
            ),
          ),
          CoinsScroller(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
