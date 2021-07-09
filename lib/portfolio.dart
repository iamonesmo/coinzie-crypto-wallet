import 'package:flutter/material.dart';

class Portforlio extends StatelessWidget {
  const Portforlio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 15,
      height: 200,
      child: Card(
        color: Colors.deepPurpleAccent.shade400,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
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
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    // controller: myController,
                    style: TextStyle(
                        fontSize: 13, color: Colors.deepPurpleAccent[400]),
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
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   // globalData.formValue = myController.text;
                        //   // // myController.text = '';

                        //   return SecondScreen();
                        // }));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.tealAccent.shade400),
                      ),
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
