import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 230,
        ),
        CustomButton(
          text: 'فوریت پزشکی',
          iconSVG: 'assset/images/group22.svg',
        ),
        SizedBox(
          height: 65,
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {@required this.iconSVG,
      @required this.text,
      @required this.backgroundImage});

  final String iconSVG;
  final String text;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [secondaryColor, primaryColor],
          )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 10,
              top: -10,
              child: Opacity(
                opacity: 0.2,
                child: SvgPicture.asset(
                  'assets/images/group24.svg',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              left: 25,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 80,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'vazir',
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Positioned(
              right: 30,
              child: SvgPicture.asset(
                'assets/images/group24.svg',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
