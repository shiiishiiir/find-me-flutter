import 'package:flutter/material.dart';

class ArticleDetailsf extends StatelessWidget {
  static const routeName = '/article-detailsf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feriwala in Dhaka'),
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
                'Feriwala in Dhaka',
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
                  'assets/findme/blog/blog2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'The informal economic sector is very important for the economy of any developing country. As a developing country, informal economy plays a significant role to Bangladesh’s labour market. But this sector is still undernourished. This research was conducted to understand the contribution of the urban informal sector at a micro scale. This paper aimed at revealing the contribution of vegetable selling to improve socioeconomic status of vegetable vendors and the obstacles they face to run their business.',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.3, fontSize: 16),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Results from this study found significant contributions of vegetable selling at a household level including: continuation of children’s education, improved food intake, access to information technology, and the savings generation. Informal businessmen also face several challenges that set back to reap maximum outcomes from this sector.',
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
