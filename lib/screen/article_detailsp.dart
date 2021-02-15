import 'package:flutter/material.dart';

class ArticleDetailsp extends StatelessWidget {
  static const routeName = '/article-detailsp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Toilets'),
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
                'Public Toilets',
                style: TextStyle(fontSize: 25),
              ),
              Text('11:59 AM, February 16, 2021'),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                height: 200.0,
                child: Image.asset(
                  'assets/findme/blog/blog3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'According to a 2017 study by ActionAid Bangladesh, in association with UK Aid, more than 90% of Public Toilets run by the city corporations are unusable Public urination is an urban plague, especially in a city as densely populated and swiftly growing as Dhaka. The situation got so bad in 2015 that the Ministry of Religious Affairs had to launch a campaign appealing to people’s piety, putting up notices in Arabic to prevent public urination. Although the city had a very few public toilets back then, they were frequently decried as unusable, especially for women and differently abled people.',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Today, there are 67 public toilets available to pedestrians, a very low number considering the nearly two crore city population. Authorities say the situation has improved as both city corporations partnered with WaterAid to refurbish several public toilets with modern furnishings and facilities. Over the last five years, with support from the H&M Foundation, WaterAid, the Dhaka, Sylhet and Chittagong city corporations have built over 30 public toilets with modern facilities that have been used over nine million times by commuters, according to the NGO.',
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
