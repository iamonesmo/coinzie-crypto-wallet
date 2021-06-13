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
            Container(
              height: 150,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Coinzie',
                        style: TextStyle(
                            shadows: [
                              Shadow(
                                  color: Colors.blueGrey.shade800,
                                  offset: Offset(0, -7)),
                            ],
                            fontFamily: 'Varela Round',
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.transparent,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.green.shade400,
                            decorationThickness: 0.3,
                            letterSpacing: 1),
                      ),
                      Text(
                        'CRYPTO WALLET',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.green.shade400,
                            letterSpacing: 2),
                      )
                    ],
                  )),
            ),
            CustomListTile(Icons.person_outline, 'Account', () {}),
            CustomListTile(Icons.notifications_outlined, 'Notifcations', () {}),
            CustomListTile(Icons.settings_outlined, 'Settings', () {}),
            CustomListTile(Icons.logout_outlined, 'Log Out', () {})
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
        title: Image.asset('assets/images/logo.png'),
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
