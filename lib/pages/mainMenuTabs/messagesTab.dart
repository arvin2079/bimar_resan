import 'package:bimarresan/components/customMessageCard.dart';
import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/components/titleDot.dart';
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
          TitleDot(text: 'ارتباط شما با پشتیبانی'),
          CustomCard(
            list: _messages,
          ),
        ],
      ),
    );
  }
}

// TODO : give a list of messages to message card

// TODO : sending message??
