import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
  static const routeName = '/article-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Street foods in Dhaka city'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Street foods in Dhaka city',
                style: TextStyle(fontSize: 25),
              ),
              Text('11:59 AM, December 19, 2020'),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                child: Image.asset(
                  'assets/findme/blog/blog1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'There is a very high demand of the Street foods in Dhaka city of Bangladesh. The reasons can be attributed by the tastes and varieties of foods, easily accessibility, low price, readily made, attraction to the foods, and above all, needs of the street people. Dhaka is the most populous city of Bangladesh',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Due to the rise in income of the city dwellers, they are coming out from their congested houses to the parks and streets on the vacations and holidays and eating street foods. Sometimes, this is a fashion of the young people eating foods standing at the street. Although, a significant portion of these people think that the street foods are unhygienic and unhealthy even then they eat those foods when they are outside their houses',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
