import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  WalletCard(this.path, this.name);
  final String path;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        splashColor: Colors.tealAccent.shade400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: Image.asset(path,
                    width: MediaQuery.of(context).size.width * 0.10),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: Text(
                  name,
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
