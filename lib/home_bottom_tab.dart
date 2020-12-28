import 'dart:async';
import 'package:findme/app_theme.dart';
import 'package:findme/screen/about_screen.dart';
import 'package:findme/screen/contact_screen.dart';
import 'package:findme/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({Key key}) : super(key: key);
  static const routeName = '/bottom-tab';

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> with TickerProviderStateMixin {
  bool multiple = true;
  DateTime backButtonOnpressedTime;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var isAuth;

  final List<Map<String, Object>> _pages = [
    {'page': HomeScreen(), 'title': 'FINDME'},
    {'page': AboutScreen(), 'title': 'ABOUT'},
    {'page': ContactScreen(), 'title': 'CONTACT US'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Future<bool> _onWillPop() async {
    if (_selectedPageIndex == 0) {
      DateTime currentTime = DateTime.now();
      bool backButton = backButtonOnpressedTime == null ||
          currentTime.difference(backButtonOnpressedTime) >
              Duration(seconds: 1);
      if (backButton) {
        backButtonOnpressedTime = currentTime;
        Fluttertoast.showToast(
          msg: 'Double click to exit.',
          backgroundColor: Colors.black45,
          textColor: Colors.white,
        );
        return false;
      }
      return true;
    }
    setState(() {
      _selectedPageIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppTheme.white,
        body: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: appBar(),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: _pages[_selectedPageIndex]['page'],
                    ),
                  ),
                ],
              ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Colors.indigo,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppTheme.nearlyWhite,
          selectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_turned_in),
              title: Text('About'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.class_),
              title: Text('Contacts'),
            ),
          ],
        ),
      )
    );
  }

  Widget appBar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: Container(
        color: Colors.indigo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 14.0),
              child: Container(
                width: AppBar().preferredSize.height - 8,
                height: AppBar().preferredSize.height - 8,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(AppBar().preferredSize.height),
                      onTap: () {
                        // Navigator.pushNamed(
                        //   context,
                        //   AccountScreen.routeName,
                        // );

                      },
                      child: Text(''),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    _pages[_selectedPageIndex]['title'],
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0),
              child: Container(
                width: AppBar().preferredSize.height - 8,
                height: AppBar().preferredSize.height - 8,
                child: Material(
                  color: Colors.indigo,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    // child: Icon(
                    //   Icons.notifications,
                    //   color: AppTheme.white,
                    // ),
                    child: Text(''),
                    // onTap: () {
                    //   isAuth
                    //       ? navigate()
                    //       : _scaffoldKey.currentState.showSnackBar(
                    //           SnackBar(
                    //             backgroundColor: Colors.red,
                    //             content: Text('You must be logged in.'),
                    //             action: SnackBarAction(
                    //               textColor: AppTheme.white,
                    //               label: "Login",
                    //               onPressed: () {
                    //                 Navigator.of(context)
                    //                     .pushNamed(LoginScreen.routeName);
                    //               },
                    //             ),
                    //           ),
                    //         );
                    // },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
