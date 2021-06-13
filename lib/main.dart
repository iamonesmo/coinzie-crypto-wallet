import 'package:coinzie/customListTile.dart';
import 'package:flutter/material.dart';
// import '../customListTile.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.blueGrey.shade500,
                  Colors.green.shade500,
                ])),
                child: Text('Drawer Header')),
            CustomListTile(Icons.person, 'Profile', () {}),
            CustomListTile(Icons.notifications, 'Notifcations', () {}),
            CustomListTile(Icons.settings, 'Settings', () {}),
            CustomListTile(Icons.logout, 'Log Out', () {})
          ],
        ),
      ),
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
