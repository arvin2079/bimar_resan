import 'package:bimarresan/components/customTextField.dart';
import 'package:bimarresan/components/nextButton.dart';
import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/components/SlidePageRoute.dart';
import 'package:bimarresan/pages/signUp.dart';
import 'package:bimarresan/pages/welcomeFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height - 270,
                child: Container(
                  child: Opacity(
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/illustration.png',
                      height: 350,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -85,
                top: 10,
                child: CircleShape(
                  color: thirdColor,
                  diameter: 170,
                ),
              ),
              Positioned(
                left: 100,
                top: 120,
                child: CircleShape(
                  color: thirdColor,
                  diameter: 50,
                ),
              ),
              _buildTitle(),
              _buildSignInForm(context),
              _buildNextButton(),
              _buildSwitchPageButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildSignInForm(BuildContext context) {
    return Positioned(
      top: 180.0,
      bottom: 0.0,
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                height: 230,
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
                            padding: EdgeInsets.only(
                                right: 25,
                                left: 25,
                                top: 10,
                                bottom: 10),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Text(
                                    'ورود',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontFamily: 'vazir',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 33),
                                  ),
                                  CustomTextField(
                                    labelText: 'شماره همراه',
                                    borderColor: thirdColor,
                                  ),
                                  CustomTextField(
                                    labelText: 'رمز عبور',
                                    borderColor: thirdColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Line(color: thirdColor),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildSwitchPageButton(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height - 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text(
            'حساب کاربری ندارید؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontFamily: 'vazir', fontSize: 13, fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpPage();
              }));
            },
            child: Text(
              'ایجاد حساب',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: thirdColor,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w500,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildNextButton() {
    return Positioned(
      right: 0,
      top: 515,
      child: NextButton(
        text: 'بعدی',
        onPressed: () {},
        icon: Icons.arrow_forward_ios,
        color: thirdColor,
        contentColor: Colors.white,
      ),
    );
  }

  Positioned _buildTitle() {
    return Positioned(
      top: 130,
      right: 10,
      child: Text(
        'بیمار رسان',
        style: TextStyle(
          fontFamily: 'vazir',
          fontSize: 40,
          fontWeight: FontWeight.w900,
          color: thirdColor,
        ),
      ),
    );
  }
}
