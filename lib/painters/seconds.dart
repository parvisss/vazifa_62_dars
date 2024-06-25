import 'package:flutter/material.dart';

class Seconds extends CustomPainter {
  const Seconds();
  @override
  void paint(Canvas canvas, Size size) {
    

    //?-----------------
    final paintSecondArrow = Paint();
    paintSecondArrow.color = Colors.blue;
    paintSecondArrow.style = PaintingStyle.stroke;
    paintSecondArrow.strokeWidth = 5;

    final pathSecond = Path();
    pathSecond.moveTo(size.width / 2, size.height / 2 - 20);
    pathSecond.lineTo(size.width / 2, size.height / 2 - 100);
    canvas.drawPath(pathSecond, paintSecondArrow);
    pathSecond.close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
