import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Find Me is - A GPS aided Tracking system',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                  'for finding nearby street food, feriwala, pubic toilet, mosque, police stations etc.'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '1. We could know the locations of nearby police stations, hospitals, mosques and etc.',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 14),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '2.	The basic objectives of this app are to provide or offer all the helpful information to a user in the need of typical circumstances of life by which he/she can survive the moments easily.',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 14),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '3.	User can find easily discover surroundings and effectively communicate with them.',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
