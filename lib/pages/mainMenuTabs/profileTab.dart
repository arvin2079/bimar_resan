import 'package:bimarresan/components/customTextField.dart';
import 'package:bimarresan/components/mainMenuButton.dart';
import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/components/titleDot.dart';
import 'package:bimarresan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileTab extends StatelessWidget {
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
          TitleDot(text: 'برای تنظیمات بیشتر از گزینه تنظیمات بالا \n.استفاده کنید'),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height - 390,
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
                      borderColor: thirdColor,
                      labelText: 'نام و نام خوانوادگی',
                    ),
                    CustomTextField(
                      borderColor: thirdColor,
                      labelText: 'شماره همراه',
                    ),
                    CustomTextField(
                      borderColor: thirdColor,
                      labelText: 'کد ملی',
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: TitleDot(
                        text: 'لطفا هر چه زود تر با ارسال مدارک حساب \n.خود را فعال کنید',
                        textColor: thirdColor,
                      ),
                    ),
                    CustomButton(
                      text: 'ارسال مدارک شناسایی',
                      iconSVG: 'assets/images/docSend.svg',
                      rightColor: profileSendButtonColor1,
                      leftColor: profileSendButtonColor2,
                      showArrow: false,
                      iconShadow: false,
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

// TODO : validation for fields
