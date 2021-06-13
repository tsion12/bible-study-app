import 'package:flutter/material.dart';

class RoundedYear extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  RoundedYear({
    Key key,
    this.text,
    this.press,
    this.verticalPadding = 16,
    this.horizontalPadding = 30,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        decoration: BoxDecoration(
          // color: Colors.blue,
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0x000000)),
            left: BorderSide(width: 1.0, color: Color(0xFFFFFFFFFF)),
            right: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
            bottom: BorderSide(width: 1.0, color: Color(0xFFFF000000)),
          ),
          // borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 30,
              color: Color(0xFFFAFAFA).withOpacity(.1),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
