import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  // const IconWidget({ Key? key }) : super(key: key);
  final IconData icon;
  final Color color;

  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
