import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:springy_slider/widgets/points.dart';

class SpringySlider extends StatefulWidget {
  final int markCount;
  final Color positiveColor;
  final Color negativeColor;

  const SpringySlider({
    Key key,
    this.markCount,
    this.positiveColor,
    this.negativeColor,
  }) : super(key: key);

  @override
  _SpringySliderState createState() => _SpringySliderState();
}

//TODO:(4.3) Use the Gesture Detector now, Wrap the Stack

class _SpringySliderState extends State<SpringySlider> {
  final paddingTop = 50.0;
  final paddingBottom = 50.0;

  double sliderPercent = 0.5;
  //TODO:(4.4) Define onPanStart,onPanEnd and onPanUpdate
//  double startDragY;
//  double startDragPercent;
//
//  void _onPanStart(DragStartDetails details) {
//      startDragY =details.globalPosition.dy;
//      startDragPercent  = sliderPercent;
//  }
//  void _onPanUpdate(DragUpdateDetails details){
//    final dragDistance = startDragY - details.globalPosition.dy;
//    final height = context.size.height;
//    final dragPercent = dragDistance / height;
//
//    sliderPercent = startDragPercent + dragPercent;
//    setState((){});
//  }
//  void _onPanEnd(DragEndDetails details){
//    startDragY = null;
//    startDragPercent = null;
//    setState((){});
//  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
//      onPanStart: _onPanStart,
//      onPanUpdate: _onPanUpdate,
//      onPanEnd: _onPanEnd,
      child: Stack(
        children: <Widget>[
          SliderMarks(
            markCount: widget.markCount,
            color: widget.positiveColor,
            paddingTop: paddingTop,
            paddingBottom: paddingBottom,
          ),
          ClipPath(
            clipper: SliderClipper(
//              paddingBottom: paddingBottom,
//              paddingTop: paddingTop,
//              sliderPercent: sliderPercent,
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  color: Theme.of(context).primaryColor,
                ),
                SliderMarks(
                  markCount: widget.markCount,
                  color: widget.negativeColor,
                  paddingTop: paddingTop,
                  paddingBottom: paddingBottom,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: paddingBottom,
              bottom: paddingBottom,
            ),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final height = constraints.maxHeight;
                final top = height * (1.0 - sliderPercent);

                return Stack(
                  children: <Widget>[
                    Positioned(
                      left: 35.0,
                      top: top - 50.0,
                      child: FractionalTranslation(
                        translation: Offset(0.0, -1.0),
                        child: Points(
                          color: Theme.of(context).primaryColor,
                          isAboveSlider: true,
                          isPointsYouNeed: false,
                          points: 100 - (sliderPercent * 100).floor(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 35.0,
                      top: top + 50.0,
                      child: Points(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        isAboveSlider: false,
                        isPointsYouNeed: true,
                        points: (sliderPercent * 100).floor(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SliderMarks extends StatelessWidget {
  final int markCount;
  final Color color;
  final double paddingTop;
  final double paddingBottom;

  const SliderMarks({
    Key key,
    this.markCount,
    this.color,
    this.paddingTop,
    this.paddingBottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: SlideMarksPainter(
        markCount: markCount,
        color: color,
        markThickness: 2.0,
        paddingTop: paddingTop,
        paddingBottom: paddingBottom,
        paddingRight: 20.0,
      ),
    );
  }
}

class SlideMarksPainter extends CustomPainter {
  final double largeMarkWidth = 30.0;
  final double smallMarkWidth = 10.0;

  final Color color;
  final double paddingTop;
  final double paddingBottom;
  final double paddingRight;
  final int markCount;
  final double markThickness;
  final Paint markPaint;

  SlideMarksPainter({
    this.color,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.markCount,
    this.markThickness,
  }) : markPaint = Paint()
          ..color = color
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = markThickness;

  @override
  void paint(Canvas canvas, Size size) {
    final paintHeight = size.height - paddingBottom - paddingTop;
    final gap = paintHeight / (markCount - 1);

    for (int i = 0; i < markCount; i++) {
      double markWidth = smallMarkWidth;

      if (i == 0 || i == markCount - 1) {
        markWidth = largeMarkWidth;
      } else if (i == 1 || i == markCount - 2) {
        markWidth = lerpDouble(smallMarkWidth, largeMarkWidth, 0.5);
      }

      final markY = i * gap + paddingTop;

      canvas.drawLine(
        Offset(size.width - markWidth - paddingRight, markY),
        Offset(size.width - paddingRight, markY),
        markPaint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//TODO:(4.1) Lets Parameterize the CLipper to take in the slide %

class SliderClipper extends CustomClipper<Path> {
//  final double sliderPercent;
//  final double paddingTop;
//  final double paddingBottom;
//
//  SliderClipper({
//    this.sliderPercent,
//    this.paddingTop,
//    this.paddingBottom,
//  });

  //TODO:(4.2) Calculate the top, bottom and height

  @override
  Path getClip(Size size) {
//    final top = paddingTop;
//    final bottom = size.height;
//    final height = (bottom - paddingBottom) - top;

    Path path = Path();

    path.addRect(
      Rect.fromLTWH(
        0.0,
        size.height / 2,
        size.width,
        size.height / 2,
      ),
//      Rect.fromLTRB(
//        0.0,
//        top + ((1.0 - sliderPercent) * height),
//        size.width,
//        bottom,
//      ),
    );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
