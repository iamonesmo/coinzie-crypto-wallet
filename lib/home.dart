import 'package:coinzie/news.dart';
import 'package:coinzie/services/api_services.dart';
import 'package:flutter/material.dart';

import 'coinsScroller.dart';
import 'newsCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ApiService client = ApiService();
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
                    'Top Gainers and Lossers',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                TextButton(onPressed: () {}, child: Text('See All')),
              ],
            ),
          ),
          CoinsScroller(),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.dashboard_customize),
              label: Text('Customize'))
        ],
      ),
    );
  }
}
