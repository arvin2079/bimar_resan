import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import 'messageContainer.dart';

class CustomCard extends StatelessWidget {


  CustomCard({@required this.list, @required this.title, this.optionalButtonTitle});
  final String title;
  final List<Widget> list;
  String optionalButtonTitle;

  @override
  Widget build(BuildContext context) {
    /*
    TODO : message must define in messageContainer
    TODO : if no message send from data base this text must be shown in the card
    list.add(
      Text(
        list.isEmpty ? '!هیچ پیامی نیست' : '',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'vazir',
          fontWeight: FontWeight.w900,
          fontSize: 35,
          color: navBarDisableColor,
        ),
      ),
    );
    */
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height - 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
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
        padding: EdgeInsets.all(10),
        //fixme its overflow under bottom navigation drawer
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: (){
                        //todo save settings changes
                      },
                      child: Text(
                        optionalButtonTitle != null ? optionalButtonTitle : "",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'vazir',
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      title,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'vazir',
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: navBarDisableColor,
                      ),
                    ),
                  ),
                ],
              ),
            ] +
                list,
          ),
        ),
      ),
    );
  }
}
