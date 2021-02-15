import 'dart:io';
import 'package:findme/app_theme.dart';
import 'package:findme/home_bottom_tab.dart';
import 'package:findme/screen/about_screen.dart';
import 'package:findme/screen/article_details.dart';
import 'package:findme/screen/article_detailsf.dart';
import 'package:findme/screen/article_detailsp.dart';
import 'package:findme/screen/contact_screen.dart';
import 'package:findme/screen/feriwala/feriwala_list.dart';
import 'package:findme/screen/feriwala/fruits/fruits-list.dart';
import 'package:findme/screen/feriwala/shak_shobji/shak-shobji-list.dart';
import 'package:findme/screen/feriwala/vegetable/vegetable-list.dart';
import 'package:findme/screen/hospital/hospital_page.dart';
import 'package:findme/screen/hospital/hospital_screen.dart';
import 'package:findme/screen/mosque/mosque_page.dart';
import 'package:findme/screen/mosque/mosque_screen.dart';
import 'package:findme/screen/police_station/police_page.dart';
import 'package:findme/screen/police_station/police_station_screen.dart';
import 'package:findme/screen/public_toilet/public_toilet_screen.dart';
import 'package:findme/screen/public_toilet/toilet_page.dart';
import 'package:findme/screen/street_food/chotpoti/chotpoti-list.dart';
import 'package:findme/screen/street_food/fuchka/fuchka-list.dart';
import 'package:findme/screen/street_food/street_food_list.dart';
import 'package:findme/screen/street_food/vajapora/vajapora-list.dart';
import 'package:findme/screen/street_food/velpuri/velpuri-list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then(
    (_) => runApp(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.indigo,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness:
          Platform.isAndroid ? Brightness.light : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    var routeName = ArticleDetailsp.routeName;
    return MaterialApp(
      title: 'Find Me',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.android,
        backgroundColor: Colors.white,
        accentColor: Colors.indigoAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomTab(),
      routes: {
        BottomTab.routeName: (ctx) => BottomTab(),
        ArticleDetails.routeName: (ctx) => ArticleDetails(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
        ContactScreen.routeName: (ctx) => ContactScreen(),
        PoliceStation.routeName: (ctx) => PoliceStation(),
        PolicePage.routeName: (ctx) => PolicePage(),
        Mosque.routeName: (ctx) => Mosque(),
        MosquePage.routeName: (ctx) => MosquePage(),
        Hospital.routeName: (ctx) => Hospital(),
        HospitalPage.routeName: (ctx) => HospitalPage(),
        PublicToilet.routeName: (ctx) => PublicToilet(),
        ToiletPage.routeName: (ctx) => ToiletPage(),
        StreetFoodList.routeName: (ctx) => StreetFoodList(),
        ChotpotiList.routeName: (ctx) => ChotpotiList(),
        FuchkaList.routeName: (ctx) => FuchkaList(),
        VajaporaList.routeName: (ctx) => VajaporaList(),
        VelpuriList.routeName: (ctx) => VelpuriList(),
        FeriwalaList.routeName: (ctx) => FeriwalaList(),
        FruitsList.routeName: (ctx) => FruitsList(),
        ShakShobjiList.routeName: (ctx) => ShakShobjiList(),
        VegetableList.routeName: (ctx) => VegetableList(),
        ArticleDetailsf.routeName: (ctx) => ArticleDetailsf(),
        ArticleDetailsp.routeName: (ctx) => ArticleDetailsp(),
      },
    );
  }
}
