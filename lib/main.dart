import 'package:coinzie/coinsScroller.dart';
import 'package:coinzie/customListTile.dart';
import 'package:coinzie/secondScreen.dart';
import 'package:flutter/material.dart';
import '/Global/global.dart' as globalData;
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
      routes: {
        "/secondScreen": (context) => SecondScreen(),
      },
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
  final myController = TextEditingController();

  void clearText() {
    myController.clear();
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

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
      ),
      body: SingleChildScrollView(
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
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Buy, Sell or Accept Cryptocurrency with Coinzie',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: myController,
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
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              // border: Border.all(color: Colors.black),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  globalData.formValue = myController.text;
                                  // myController.text = '';

                                  return SecondScreen();
                                }));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.tealAccent.shade400),
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                          )
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
