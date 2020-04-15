import 'package:bimarresan/components/mainMenuButton.dart';
import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/components/titleDot.dart';
import 'package:bimarresan/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 230,
            ),
            CustomButton(
              text: 'دستیار فوریت پزشکی',
              solidColor: Colors.white,
              iconSVG: 'assets/images/group22.svg',
              fontColor: Colors.black,
              iconShadow: false,
              arrowColor: navBarDisableColor,
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: TitleDot(text: 'درخواست سریع فوریت با یک کلیک'),
            ),
            CustomButton(
              text: 'فوریت پزشکی',
              leftColor: secondaryColor,
              rightColor: primaryColor,
              iconSVG: 'assets/images/group24.svg',
              onPressed: () {},
            ),
            CustomButton(
              text: 'صوانح جاده ای',
              leftColor: button21Color,
              rightColor: button22Color,
              iconSVG: 'assets/images/group23.svg',
              onPressed: () {},
            ),
            CustomButton(
              text: 'سوختگی',
              leftColor: button32Color,
              rightColor: button31Color,
              iconSVG: 'assets/images/group24.svg',
              onPressed: () {},
            ),
            CustomButton(
              text: 'خودکشی',
              leftColor: button42Color,
              rightColor: button41Color,
              iconSVG: 'assets/images/group26.svg',
              onPressed: () {},
            ),
            SizedBox(
              height: 65,
            ),
          ],
        ),
      ),
    );
  }
}

//todo : put inkwell for it and make it clickable
