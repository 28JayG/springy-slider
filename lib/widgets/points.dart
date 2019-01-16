//TODO:(3.3)Create a widget for points
import 'package:flutter/material.dart';

//class Points extends StatelessWidget {
//  final int points;
//  final bool isAboveSlider;
//  final bool isPointsYouNeed;
//  final Color color;
//
//  const Points({
//    Key key,
//    this.points,
//    this.isAboveSlider,
//    this.isPointsYouNeed,
//    this.color,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    final percent = points / 100.0;
//    final pointTextSize = 30.0 + (70.0 * percent);
//
//    return Row(
//      crossAxisAlignment:
//          isAboveSlider ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//      children: <Widget>[
//        FractionalTranslation(
//          translation: Offset(0.0, isAboveSlider ? 0.18 : -0.18),
//          child: Text(
//            '$points',
//            style: TextStyle(
//              fontSize: pointTextSize,
//              color: color,
//            ),
//          ),
//        ),
//        Padding(
//          padding: EdgeInsets.only(left: 8.0),
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            mainAxisSize: MainAxisSize.min,
//            children: <Widget>[
//              Text(
//                'POINTS',
//                style: TextStyle(
//                  color: color,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//              SizedBox(height: 4.0),
//              Text(
//                isPointsYouNeed ? 'YOU NEED' : 'YOU HAVE',
//                style: TextStyle(
//                  color: color,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
//            ],
//          ),
//        )
//      ],
//    );
//  }
//}
