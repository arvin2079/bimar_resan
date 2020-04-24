import 'package:bimarresan/components/customMessageCard.dart';
import 'package:bimarresan/components/shapes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class SettingsPage extends StatelessWidget {
  String _title = "!تنظیمات اینجاست؟";
  String _subTitle = "مثل اینکه خودشه، اینجاست";

  @override
  Widget build(BuildContext context) {
    setStatusBar();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            right: -80,
            top: -110,
            child: CircleShape(
              color: thirdColor,
              diameter: 330,
            ),
          ),
          Positioned(
            right: 259,
            top: 78,
            child: CircleShape(
              color: thirdColor,
              diameter: 15,
            ),
          ),
          Positioned(
            right: 287,
            top: 86,
            child: CircleShape(
              color: thirdColor,
              diameter: 30,
            ),
          ),
          Positioned(
            top: 120,
            right: 290,
            child: RawMaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Icon(
                Icons.home,
                color: Colors.white,
                size: 27.0,
              ),
              shape: new CircleBorder(),
              elevation: 0.0,
              fillColor: thirdColor,
              padding: const EdgeInsets.all(11.0),
            ),
          ),
          Positioned(
            top: 60,
            right: 15,
            child: Text(
              _title,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 95,
            right: 15,
            child: Text(
              _subTitle,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'vazir',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                    ),
                    Expanded(
                      child: CustomCard(
                        title: ":تنظیمات اصلی",
                        list: _buildSettingsList(),
                        optionalButtonTitle: "ذخيره و بازگشت",
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  void setStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black.withOpacity(0.2),
      statusBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  List<Widget> _buildSettingsList() {
    String _lorem = "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم";
    List<Widget> _result = List();
    //fixme change icons
    _result.add(_buildSettingsItem("مخاطبین فوریت های پزشکی", _lorem , Icons.add, (){}));
    _result.add(_buildSettingsItem("تنظيمات دارویی", _lorem, Icons.add, (){}));
    _result.add(_buildSettingsItem("مراکز درمانی", _lorem, Icons.add, (){}));
    _result.add(_buildSettingsItem("اورژانس", _lorem, Icons.add, (){}));
    _result.add(_buildSettingsItem("اطلاع رسانی", _lorem, Icons.add, (){}));
    _result.add(_buildSettingsItem("تنظیمات کلی", _lorem, Icons.add, (){}));
    _result.add(_buildSettingsItem("مخاطبین فوریت های پزشکی", _lorem, Icons.add, (){}));
    return _result;
  }

  Widget _buildSettingsItem(String title, String subTitle, IconData icon, Function onTap, ){
    return ListTile(
      //fixme ripple items doesn't work
      onTap: () => onTap,
      title: Text(
        title,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: 'vazir',
          fontWeight: FontWeight.w800,
          fontSize: 17,
          color: Colors.black87,
        ),
      ),
      subtitle: Text(
        subTitle,
        textDirection: TextDirection.rtl,
        maxLines: 1,
        style: TextStyle(
          fontFamily: 'vazir',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.black26,
        ),
      ),
      trailing: Icon(
        icon,
        size: 28,
        color: Colors.black87,
      ),
    );
  }
}
