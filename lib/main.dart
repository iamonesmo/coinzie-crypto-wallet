import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coinzie : Crypto Wallet',
      home: MainApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Coinzie',
            style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.greenAccent,
            ),
          ),
        ],
        leading: Icon(Icons.notes, color: Colors.greenAccent),
        // leading: IconButton(
        //   icon: Image.asset('assets/large_coinzie.png'),
        //   onPressed: () {},
        // ),
      ),
      body: Container(
        child: Column(
            // children: [
            // Image(image: Image.asset(name)),
            ),
      ),
    );
  }
}
