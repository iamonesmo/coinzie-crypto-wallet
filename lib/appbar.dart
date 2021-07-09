import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
