import 'dart:async';

import 'package:coinzie/Global/global.dart';
import 'package:coinzie/main.dart';
import 'package:coinzie/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    getValidationDate().whenComplete(() async {
      Timer(Duration(seconds: 2),
          () => Get.off(isLoggedIn == false ? Welcome() : MainApp()));
    });
  }

  Future getValidationDate() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var loginData = sharedPreferences.getBool('login');
    setState(() {
      isLoggedIn = loginData!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}
