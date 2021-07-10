import 'package:coinzie/newsCard.dart';
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
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Popular Coins',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('See All'))
              ],
            ),
          ),
          CoinsScroller(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'News',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('See All'))
              ],
            ),
          ),
          NewsCard(),
          NewsCard(),
          NewsCard(),
          NewsCard(),
          NewsCard(),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.dashboard_customize),
              label: Text('Customize'))
        ],
      ),
    );
  }
}
