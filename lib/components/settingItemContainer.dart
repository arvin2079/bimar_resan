import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class SettingItemContainer extends StatelessWidget {
  const SettingItemContainer({Key key, this.labelText, this.underlineText, this.icon}) : super(key: key);
  final String labelText;
  final String underlineText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 5),
      height: 75,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: navBarDisableColor.withOpacity(0.4),
            width: 2,
          ),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            right: 10,
            top: 18,
            child: Icon(
              icon,
              size: 30,
              color: Colors.black,
            ),
          ),
          Positioned(
            right: 55,
            top: 15,
            child: Text(
              labelText,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ),
          Positioned(
            right: 55,
            top: 41,
            child: Text(
              underlineText.length > 25 ? '...' + underlineText.substring(0, 25) : underlineText,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: seenMessagesColor,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w100,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
