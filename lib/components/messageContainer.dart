import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants.dart';

class MessageContainer extends StatelessWidget {
  const MessageContainer(
      {this.isFromUser = true,
      @required this.message,
      this.isNew = false});

  final String message;
  final bool isFromUser;
  final bool isNew;

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
            child: SvgPicture.asset(
              isNew
                  ? 'assets/images/doctorIcon.svg'
                  : 'assets/images/doctorIcon2.svg',
              width: 30,
              height: 30,
            ),
          ),
          Positioned(
            right: 55,
            top: 15,
            child: Text(
              isFromUser ? 'شما' : 'پشتیبانی',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: isNew ? Colors.black : seenMessagesColor,
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
              message.length > 25 ? '...' + message.substring(0, 25) : message,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: isNew ? Colors.black : seenMessagesColor,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w100,
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: 19,
            left: 10,
            child: Text(
              isNew ? 'جدید' : '',
              style: TextStyle(
                color: thirdColor,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
