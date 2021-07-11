import 'package:coinzie/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'customListTile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                          letterSpacing: 2),
                    ),
                    Text(
                      'EVERYTHING CRYPTO',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blue.shade900,
                          letterSpacing: 1),
                    )
                  ],
                )),
          ),
          CustomListTile(Icons.person_outline, 'Account', () {}),
          CustomListTile(Icons.notifications_outlined, 'Notifcations', () {}),
          CustomListTile(Icons.settings_outlined, 'Settings', () {}),
          CustomListTile(Icons.logout_outlined, 'Log Out', () {
            return showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                      title: Text('Are You sure you want to logout?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              //  Navigator.pop(context)
                              Navigator.of(ctx).pop();
                            },
                            child: Text('No')),
                        TextButton(
                            onPressed: () async {
                              SharedPreferences _sp =
                                  await SharedPreferences.getInstance();
                              _sp.setBool('login', false);

                              Get.offAll(Welcome());
                            },
                            child: Text('Yes'))
                      ],
                    ));
          }),
        ],
      ),
    );
  }
}
