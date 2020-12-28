import 'package:findme/app_theme.dart';
import 'package:flutter/material.dart';

class BlockWidget extends StatelessWidget {
  final String icon;
  final String text;
  final double blockHeight;
  final double blockWidth;
  final Function blockFunction;
  final double iconWidth;
  final double textSize;

  BlockWidget({
    this.icon,
    @required this.text,
    this.blockHeight = .13,
    this.blockWidth = .13,
    this.blockFunction,
    this.iconWidth = 30.0,
    this.textSize = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.nearlyWhite,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topRight: Radius.circular(8.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppTheme.grey.withOpacity(0.2),
              offset: Offset(1.1, 1.1),
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            splashColor: AppTheme.nearlyDarkBlue.withOpacity(0.2),
            onTap: blockFunction,
            child: Container(
              height: MediaQuery.of(context).size.height * blockHeight,
              width: MediaQuery.of(context).size.height * blockWidth,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(this.icon, fit: BoxFit.cover, width: iconWidth,),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      this.text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: textSize,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
