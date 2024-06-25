import 'package:flutter/material.dart';

class Body extends CustomPainter {
  const Body();

  @override
  void paint(Canvas canvas, Size size) {
    //?-----------------
    final paintCircle = Paint();
    paintCircle.color = const Color.fromARGB(255, 27, 34, 75);
    paintCircle.style = PaintingStyle.fill;
    paintCircle.strokeWidth = 5;

    final mainCircle = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(mainCircle, 130, paintCircle);
    //?-----------------

    final paintBorder = Paint();
    paintBorder.color = Colors.white;
    paintBorder.style = PaintingStyle.stroke;
    paintBorder.strokeWidth = 15;

    final circleBorder = Offset(size.width, size.height);
    canvas.drawCircle(circleBorder, 135, paintBorder);

    //?-----------------
    final paintCenter = Paint();
    paintCenter.color = Colors.white;
    paintCenter.style = PaintingStyle.fill;

    final CircleCenter = Offset(size.width, size.height);
    canvas.drawCircle(CircleCenter, 20, paintCenter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
