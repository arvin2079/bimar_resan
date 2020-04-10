import 'package:bimarresan/components/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: -85,
              top: 40,
              child: CircleShape(
                color: thirdColor,
                diameter: 170,
              ),
            ),
            Positioned(
              left: 100,
              top: 150,
              child: CircleShape(
                color: thirdColor,
                diameter: 50,
              ),
            ),
            Positioned(
              top: 170,
              right: 10,
              child: Text(
                'بیمار رسان',
                style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: thirdColor
                ),
              ),
            ),
            Positioned(
              top: 270,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Card(
                          elevation: 2,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  'ورود',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: 'vazir',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 33
                                  ),
                                ),
                                CustomTextField(
                                  labelText: 'نام و نام خوانوادگی',
                                  borderColor: thirdColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Line(color: thirdColor),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleShape extends StatelessWidget {
  const CircleShape({this.diameter, this.color});
  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
    );
  }
}


