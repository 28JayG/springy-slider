import 'dart:ui';

import 'package:flutter/material.dart';

//TODO:(2.1) A Springy Slider shall be created
//class SpringySlider extends StatefulWidget {
//  final int markCount;
//  final Color positiveColor;
//  final Color negativeColor;
//
//  const SpringySlider({
//    Key key,
//    this.markCount,
//    this.positiveColor,
//    this.negativeColor,
//  }) : super(key: key);
//
//  @override
//  _SpringySliderState createState() => _SpringySliderState();
//}
//
////TODO:(2.6.1) Remember? we had the stack, seems like we need another one on it to clip the new one
//
//class _SpringySliderState extends State<SpringySlider> {
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: <Widget>[
//        SliderMarks(
//          markCount: widget.markCount,
//          color: widget.positiveColor,
//          paddingTop: 50.0,
//          paddingBottom: 50.0,
//        ),
////        ClipPath(
////          clipper: SliderClipper(),
////          child: Stack(
////            children: <Widget>[
////              Container(
////                color: Theme.of(context).primaryColor,
////              ),
////              SliderMarks(
////                markCount: widget.markCount,
////                color: widget.negativeColor,
////                paddingTop: 50.0,
////                paddingBottom: 50.0,
////              ),
////            ],
////          ),
////        )
//      ],
//    );
//  }
//}

//TODO(2.3) SliderMarks that takes a CustomPaint

//class SliderMarks extends StatelessWidget {
//  final int markCount;
//  final Color color;
//  final double paddingTop;
//  final double paddingBottom;
//
//  const SliderMarks({
//    Key key,
//    this.markCount,
//    this.color,
//    this.paddingTop,
//    this.paddingBottom,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return CustomPaint(
//      child: Container(),
//      painter: SlideMarksPainter(
//        markCount: markCount,
//        color: color,
//        markThickness: 2.0,
//        paddingTop: paddingTop,
//        paddingBottom: paddingBottom,
//        paddingRight: 20.0,
//      ),
//    );
//  }
//}

//TODO:(2.4) create a painter

// TODO:(2.5) implement paint

//class SlideMarksPainter extends CustomPainter {
////  final double largeMarkWidth = 30.0;
////  final double smallMarkWidth = 10.0;
//
//  final Color color;
//  final double paddingTop;
//  final double paddingBottom;
//  final double paddingRight;
//  final int markCount;
//  final double markThickness;
////  final Paint markPaint;
//
//  SlideMarksPainter({
//    this.color,
//    this.paddingTop,
//    this.paddingBottom,
//    this.paddingRight,
//    this.markCount,
//    this.markThickness,
//  });
//
////  }) : markPaint = Paint()
////          ..color = color
////          ..strokeCap = StrokeCap.round
////          ..style = PaintingStyle.stroke
////          ..strokeWidth = markThickness;
//
//  @override
//  void paint(Canvas canvas, Size size) {
////    final paintHeight = size.height - paddingBottom - paddingTop;
////    final gap = paintHeight / (markCount - 1);
////
////    for (int i = 0; i < markCount; i++) {
////      double markWidth = smallMarkWidth;
////
////      if (i == 0 || i == markCount - 1) {
////        markWidth = largeMarkWidth;
////      } else if (i == 1 || i == markCount - 2) {
////        markWidth = lerpDouble(smallMarkWidth, largeMarkWidth, 0.5);
////      }
////
////      final markY = i * gap + paddingTop;
////
////      canvas.drawLine(
////        Offset(size.width - markWidth - paddingRight, markY),
////        Offset(size.width - paddingRight, markY),
////        markPaint,
////      );
////    }
//  }
//
//  @override
//  bool shouldRepaint(CustomPainter oldDelegate) {
//    return true;
//  }
//}

//TODO:(2.6.2) Create a CustomClipper

//class SliderClipper extends CustomClipper<Path>{
//  @override
//  Path getClip(Size size) {
//
//    Path path = Path();
//
//    path.addRect(
//      Rect.fromLTWH(
//        0.0,
//        size.height /2,
//        size.width,
//        size.height/2,
//      ),
//    );
//
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
//
//}
