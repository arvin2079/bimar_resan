import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({this.icon, this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          )
      ),
      color: Colors.white,
      child: Container(
        height: 60,
        width: 150,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'vazir',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            Spacer(),
            Icon(
              icon,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
