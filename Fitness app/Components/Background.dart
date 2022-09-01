import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

BackgroundCircles(screenWidth){

  return Stack(
    alignment: Alignment.bottomCenter,
    children: [

      Circles(),

      ClipPath(
        clipper: BackgroudCliper(),
        child: Container(
          height: 200,
          color: Colors.white.withOpacity(0.30),
        ),
      ),

      ClipPath(
        clipper: BackgroudCliper(),
        child: Container(
          height: 180,
          color: Colors.white,
        ),
      ),

      Container(
        height: 70,
        width: screenWidth,
        color: Colors.white,
      ),

    ],
  );
}


class BackgroudCliper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 100);
    path.quadraticBezierTo(size.width / 6, 60, size.width / 3, 100);
    path.quadraticBezierTo(size.width / 2, 140, 2 * size.width / 3, 100);
    path.quadraticBezierTo(5 * size.width / 6, 60, size.width, 100);
    path.lineTo(0, size.width * 12);
    path.lineTo(0, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

Circles(){
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
    ],
  );

}
