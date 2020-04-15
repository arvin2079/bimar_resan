import 'package:bimarresan/components/customMessageCard.dart';
import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MessageTab extends StatelessWidget {
  List<Widget> _messages = List();

  @override
  Widget build(BuildContext context) {

    // TODO : fill the _messages with messages

    return Container(
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                'درخواست سریع فوریت با یک کلیک',
                style: TextStyle(
                    color: navBarDisableColor,
                    fontFamily: 'vazir',
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              CircleShape(
                color: thirdColor,
                diameter: 10,
              )
            ],
          ),
          CustomCard(
            list: _messages,
          ),
        ],
      ),
    );
  }
}

// TODO : give a list of messages to message card
