import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData tileIcon;
  final String tileText;
  final Function tileOnTap;

  CustomListTile(this.tileIcon, this.tileText, this.tileOnTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.blueGrey,
          onTap: () {},
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      tileIcon,
                      color: Colors.blueGrey.shade800,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        tileText,
                        style: TextStyle(
                            fontSize: 16.0, color: Colors.blueGrey.shade800),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.blueGrey.shade800,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
