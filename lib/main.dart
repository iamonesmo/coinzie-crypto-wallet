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
      drawer: Container(
          width: 100,
          color: Colors.blueAccent,
          child: Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Icon(Icons.login_outlined),
                ),
                ListTile(
                  title: Icon(Icons.login_outlined),
                ),
                ListTile(
                  title: Icon(Icons.login_outlined),
                )
              ],
            ),
          )),
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.green[400],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  size: 40,
                ));
          },
        ),
        backgroundColor: Colors.white,
        title: Image.asset('assets/logo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                size: 40,
                // color: Colors.green[400],
              ),
              tooltip: 'Go to Wallet',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('This will navigate to next screen')));
              },
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
