import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'messageContainer.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({this.list});

  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    /*
    TODO : message must define in messageContainer
    TODO : if no message send from data base this text must be shown in the card
    list.add(
      Text(
        list.isEmpty ? '!هیچ پیامی نیست' : '',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'vazir',
          fontWeight: FontWeight.w900,
          fontSize: 35,
          color: navBarDisableColor,
        ),
      ),
    );
    */
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height - 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0, // has the effect of softening the shadow
            spreadRadius: 0.0, // has the effect of extending the shadow
            offset: Offset(
              0.0, // horizontal, move right 10
              3.0, // vertical, move down 10
            ),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      ':صندوق پیام ها',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'vazir',
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: navBarDisableColor,
                      ),
                    ),
                  ),
                ] +
                list,
          ),
        ),
      ),
    );
  }
}
