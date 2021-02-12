import 'package:findme/screen/hospital/hospital_screen.dart';
import 'package:findme/screen/mosque/mosque_screen.dart';
import 'package:findme/screen/police_station/police_station_screen.dart';
import 'package:findme/screen/public_toilet/public_toilet_screen.dart';
import 'package:findme/screen/street_food/street_food_list.dart';
import 'package:findme/widget/component/blockWidget.dart';
import 'package:flutter/material.dart';

class BlockWidgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            BlockWidget(
              icon: "assets/findme/block-logo/police-station.png",
              iconWidth: 50.0,
              text: 'Police Station',
              blockFunction: () {
                Navigator.of(context).pushNamed(PoliceStation.routeName);
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            BlockWidget(
              icon: "assets/findme/block-logo/mosque.png",
              iconWidth: 50.0,
              text: 'Mosque',
              blockFunction: () {
                Navigator.of(context).pushNamed(Mosque.routeName);
              },
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            BlockWidget(
              icon: "assets/findme/block-logo/hospital.png",
              iconWidth: 50.0,
              text: 'Hospital',
              blockFunction: () {
                Navigator.of(context).pushNamed(Hospital.routeName);
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            BlockWidget(
              icon: "assets/findme/block-logo/toilet.png",
              iconWidth: 50.0,
              text: 'Public Toilet',
              blockFunction: () {
                Navigator.of(context).pushNamed(PublicToilet.routeName);
              },
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: <Widget>[
            BlockWidget(
              icon: "assets/findme/block-logo/street-food.png",
              iconWidth: 50.0,
              text: 'Street Food',
              blockFunction: () {
                Navigator.of(context).pushNamed(StreetFoodList.routeName);
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            BlockWidget(
              icon: "assets/findme/block-logo/feri.png",
              text: 'Feriwala',
              blockFunction: () {
                // Navigator.of(context).pushNamed(Feriwala.routeName);
              },
            ),
          ],
        ),
      ],
    );
  }
}
