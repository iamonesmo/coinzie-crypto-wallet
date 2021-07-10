import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 15,
        height: 150,
        child: Card(
          elevation: 0.0,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            'https://img.etimg.com/thumb/msid-84263304,width-210,imgsize-216885,,resizemode-4,quality-100/header-4_640x480.jpg',
                            width: 90.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: Text(
                            'Author',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '3 hours ago',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Text(
                      'News Headlines goes here... lorem ipsum idor desto and then there were a number of words',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
