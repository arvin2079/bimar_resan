import 'package:bimarresan/components/shapes.dart';
import 'package:bimarresan/constants.dart';
import 'package:bimarresan/pages/mainMenuTabs/homeTab.dart';
import 'package:bimarresan/pages/mainMenuTabs/locationTab.dart';
import 'package:bimarresan/pages/mainMenuTabs/messagesTab.dart';
import 'package:bimarresan/pages/mainMenuTabs/profileTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'settingsPage.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0;
  String _title = 'مشکلی پیش اومده!؟';
  String _subtitle = 'ما با بیمار رسان کمکت میکنیم';

  final TextStyle selectedLabelStyle = TextStyle(
    color: navBarDisableColor,
    fontFamily: 'vazir',
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  final TextStyle unselectedLabelStyle = TextStyle(
    color: navBarDisableColor,
    fontFamily: 'vazir',
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          _title = 'مشکلی پیش اومده!؟';
          _subtitle = 'ما با بیمار رسان کمکت میکنیم';
          break;
        case 1:
          _title = '!چقدر پیام برات اومده';
          _subtitle = 'یه سری به اینجا بزن ببین چه خبره';
          break;
        case 2:
          _title = 'الان دقیقا کجایی!؟';
          _subtitle = 'دقیق بگو کجایی تا کمکت کنیم';
          break;
        case 3:
          _title = '!به به ببین کی اومده';
          _subtitle = '!حالت چطوره؟';
          break;
      }
    });
  }

  //todo : check if we need using safeArea widget
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
                //fixme this button not working in home tab!
                Navigator.push(context, MaterialPageRoute(builder: (context)=>(SettingsPage())));
              },
              child: new Icon(
                Icons.settings,
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
              _subtitle,
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
            child: _buildBody(),
          )
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedItemColor: thirdColor,
        unselectedItemColor: navBarDisableColor,
        selectedLabelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('خانه'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('پیام ها'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            title: Text('موقعیت'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('نمایه'),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return HomeTab();
      case 1:
        return MessageTab();
      case 2:
        return LocationTab();
      case 3:
        return ProfileTab();
    }
  }

  void setStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black.withOpacity(0.2),
      statusBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}

