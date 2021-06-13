import 'package:coinzie/coinsScroller.dart';
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
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent.shade400),
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
                                  color: Colors.blue.shade900,
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
                            color: Colors.blue.shade900,
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
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.blue[900],
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
        title: Text(
          'Coinzie',
          style: TextStyle(
              fontFamily: 'Varela Round',
              color: Colors.blue[900],
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        // child: Image.asset(
        //   'assets/images/logo.png',
        //   height: 100,
        // ),

        // actions: [
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10),
        //   child: IconButton(
        //     icon: Icon(
        //       Icons.account_balance_wallet_outlined,
        //       size: 40,
        //     ),
        //     tooltip: 'Go to Wallet',
        //     onPressed: () {
        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //           content: Text('This will navigate to next screen')));
        //     },
        //   ),
        // ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 15,
                  // height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Column(
                      children: [
                        Image.network(
                          'https://coingate.com/_next/static/images/buy-crypto-f3dad06ca5c7e714af9222a455aa63a5.png',
                          width: MediaQuery.of(context).size.width - 15,
                          height: 200,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 6.0, bottom: 15.0),
                          child: Text(
                            'Buy a piece of the future',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 17,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
            Container(
              width: MediaQuery.of(context).size.width - 15,
              height: 200,
              child: Card(
                color: Colors.deepPurpleAccent.shade400,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/signup.png',
                        width: MediaQuery.of(context).size.width * 0.40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up and Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.deepPurpleAccent[400]),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 12),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    borderSide: BorderSide.none),
                                hintText: 'Enter Your Name',
                                hintStyle: TextStyle(fontSize: 13)),
                          ),

                          // TextButton(onPressed: onPressed, child: TextStyle(),
                          // style: ButtonStyle(col),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
