import 'package:flutter/material.dart';
import '/Global/global.dart' as globalData;

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 15,
              // height: 300,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, bottom: 15.0),
                      child: Text(
                        'Welcome, ${globalData.fullName}',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 17,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Image.network(
                      'https://coingate.com/_next/static/images/buy-crypto-f3dad06ca5c7e714af9222a455aa63a5.png',
                      width: MediaQuery.of(context).size.width - 15,
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, bottom: 15.0),
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
          ),
        ],
      ),
    );
  }
}
