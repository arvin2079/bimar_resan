import 'package:bimarresan/components/customTextField.dart';
import 'package:bimarresan/components/titleDot.dart';
import 'package:bimarresan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LocationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 250,
          ),
          TitleDot(text: 'موقعیت مکانی دقیق خود را مشخص کنید'),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height - 450,
            width: MediaQuery.of(context).size.width - 30,
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
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    CustomTextField(
                      labelText: 'آدرس شما:',
                      borderColor: thirdColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: MediaQuery.of(context).size.height - 580,
                        child: Image.asset(
                          'assets/images/cityView.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 65,
          ),
        ],
      ),
    );
  }
}

// TODO : when tap on map , open map and get the location
