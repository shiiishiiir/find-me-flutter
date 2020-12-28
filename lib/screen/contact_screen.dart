import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  static const routeName = '/contact-screen';

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
                'Contact Us',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text('Our app is under construction and we always update our app for you to use it easily in every critical situations of your daily challenging life. So, if you have any suggestions or say you may contact us. Here is the contact info below:'),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Mamunur Rashid Sajal',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 14),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Email:  mamunursajalrashid@gmail.com',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 14),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Moshiur Rahman (Shishir)',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 14),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Email: shiiiishiiiir@gmail.com',
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
