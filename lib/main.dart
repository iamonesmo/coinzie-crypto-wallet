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
        // title: Center(
        //   child: Text(
        //     'Coinzie',
        //     style: TextStyle(
        //         color: Colors.greenAccent,
        //         fontSize: 24,
        //         fontWeight: FontWeight.bold),
        //   ),

        // ),
        title: Image.asset('assets/logo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                size: 40,
                color: Colors.green[400],
              ),
              tooltip: 'Go to Wallet',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('This will navigate to next screen')));
              },
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.notes,
            color: Colors.green[400],
            size: 40,
          ),
          onPressed: () {},
        ),
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
