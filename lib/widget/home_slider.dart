import 'package:carousel_pro/carousel_pro.dart';
import 'package:findme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: AppTheme.grey.withOpacity(0.4),
            offset: Offset(1.1, 1.1),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: SizedBox(
        height: 200.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Carousel(
            images: [
              ExactAssetImage("assets/findme/slider/1.jpg"),
              ExactAssetImage("assets/findme/slider/2.jpg"),
              ExactAssetImage("assets/findme/slider/3.jpg"),
              ExactAssetImage("assets/findme/slider/4.jpg"),
              ExactAssetImage("assets/findme/slider/5.jpg"),
              ExactAssetImage("assets/findme/slider/6.jpg"),
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            indicatorBgPadding: 6.0,
            showIndicator: true,
            dotBgColor: Colors.transparent,
            autoplay: true,
            boxFit: BoxFit.cover,
            animationDuration: Duration(milliseconds: 2000),
            // autoplayDuration: Duration(microseconds: 5000),
          ),
        ),
      ),
    );
  }
}
