import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
          color: color, borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}