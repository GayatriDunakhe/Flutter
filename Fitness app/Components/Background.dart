import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

BackgroundCircles(screenWidth){

  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.20),
        ),
      ),

      Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.50),
        ),
      ),

      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),


      ClipPath(
        clipper: ProsteBezierCurve(
            list: [
              BezierCurveSection(
                start: Offset(screenWidth, 0),
                top: Offset(screenWidth / 4 * 3, 60),
                end: Offset(screenWidth / 2, 30),
              ),
              BezierCurveSection(
                start: Offset(screenWidth / 2, 30),
                top: Offset(screenWidth / 4, 0),
                end: Offset(0, 30),
              ),
            ]
        ),
        child: Container(
          height: 200,
          color: Colors.white.withOpacity(0.60),
        ),
      ),
    ],
  );
}
