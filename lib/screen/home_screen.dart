import 'package:findme/app_theme.dart';
import 'package:findme/screen/article_details.dart';
import 'package:findme/screen/article_detailsf.dart';
import 'package:findme/screen/article_detailsp.dart';
import 'package:findme/widget/block_widget_screen.dart';
import 'package:findme/widget/home_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: HomeSlider(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: BlockWidgetScreen(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ArticleDetails.routeName);
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            // color: AppTheme.grey.withOpacity(0.4),
                            color: Colors.greenAccent,
                            offset: Offset(1.1, 1.1),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            child: SizedBox(
                              height: 74,
                              child: AspectRatio(
                                aspectRatio: 1.714,
                                child: Image.asset(
                                    "assets/findme/block-logo/back.png"),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      right: 16,
                                      top: 16,
                                    ),
                                    child: Text(
                                      "Street foods in Dhaka",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: AppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        color: AppTheme.nearlyDarkBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 100,
                                  bottom: 12,
                                  top: 4,
                                  right: 16,
                                ),
                                child: Text(
                                  "11:59 AM, December 19, 2020",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    letterSpacing: 0.0,
                                    color: AppTheme.grey.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ArticleDetailsf.routeName);
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            // color: AppTheme.grey.withOpacity(0.4),
                            color: Colors.greenAccent,
                            offset: Offset(1.1, 1.1),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            child: SizedBox(
                              height: 74,
                              child: AspectRatio(
                                aspectRatio: 1.714,
                                child: Image.asset(
                                    "assets/findme/block-logo/back.png"),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      right: 16,
                                      top: 16,
                                    ),
                                    child: Text(
                                      "Feriwala in Dhaka",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: AppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        color: AppTheme.nearlyDarkBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 100,
                                  bottom: 12,
                                  top: 4,
                                  right: 16,
                                ),
                                child: Text(
                                  "11:59 AM, February 16, 2021",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    letterSpacing: 0.0,
                                    color: AppTheme.grey.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ArticleDetailsp.routeName);
              },
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            // color: AppTheme.grey.withOpacity(0.4),
                            color: Colors.greenAccent,
                            offset: Offset(1.1, 1.1),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            child: SizedBox(
                              height: 74,
                              child: AspectRatio(
                                aspectRatio: 1.714,
                                child: Image.asset(
                                    "assets/findme/block-logo/back.png"),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 100,
                                      right: 16,
                                      top: 16,
                                    ),
                                    child: Text(
                                      "Public Toilets",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontFamily: AppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        color: AppTheme.nearlyDarkBlue,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 100,
                                  bottom: 12,
                                  top: 4,
                                  right: 16,
                                ),
                                child: Text(
                                  "11:59 AM, February 16, 2021",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontName,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    letterSpacing: 0.0,
                                    color: AppTheme.grey.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
