import 'package:flutter/material.dart';

import 'customListTile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

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
    );
  }
}
