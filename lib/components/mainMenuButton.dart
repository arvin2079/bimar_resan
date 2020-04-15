import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.onPressed,
      this.solidColor,
      @required this.iconSVG,
      @required this.text,
      @required this.rightColor,
      @required this.leftColor});

  final String iconSVG;
  final String text;
  final Color rightColor;
  final Color leftColor;
  final Function onPressed;
  final Color solidColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 6, bottom: 6, right: 8, left: 8),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8.0, // has the effect of softening the shadow
              spreadRadius: 0.0, // has the effect of extending the shadow
              offset: Offset(
                0.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            )
          ],
          gradient: solidColor != null ? null : LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [leftColor, rightColor],
          ),
          color: solidColor,
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: onPressed,
            highlightColor: Colors.black12,
            splashColor: Colors.black12,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  left: 10,
                  top: -10,
                  child: Opacity(
                    opacity: 0.2,
                    child: SvgPicture.asset(
                      iconSVG,
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
                    iconSVG,
                    height: 30,
                    width: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
