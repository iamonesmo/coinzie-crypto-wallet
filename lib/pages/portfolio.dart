import 'package:flutter/material.dart';

class Portforlio extends StatelessWidget {
  const Portforlio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // width: MediaQuery.of(context).size.width - 10,
          child: Card(
            margin: EdgeInsets.only(left: 11, right: 11),
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/signup.png',
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                ),

                // margin: EdgeInsets.only(right: 10.0),
                // width: MediaQuery.of(context).size.width * 0.50,

                Text(
                  'Create Portfolio and Get Started',
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  // margin: EdgeInsets.only(left: 18),
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
                  child: Container(
                    child: Text(
                      'Keep track of your profits, losses and your portfolio valuation. Start building your portfolio toady.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey[600],
                          height: 1.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.tealAccent.shade400),
              ),
              child: Text(
                'Create Portfolio',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
