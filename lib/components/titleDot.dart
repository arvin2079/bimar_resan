import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleDot extends StatelessWidget {
  const TitleDot({@required this.text, this.textColor});
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: textColor == null ? navBarDisableColor : textColor,
            fontFamily: 'vazir',
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6, left: 10),
          child: CircleShape(
            color: thirdColor,
            diameter: 10,
          ),
        )
      ],
    );
  }
}
