import 'package:flutter/material.dart';

class Minutes extends CustomPainter {
  const Minutes();

  @override
  void paint(Canvas canvas, Size size) {
    final paintMiute = Paint();
    paintMiute.color = Colors.amber;
    paintMiute.style = PaintingStyle.stroke;
    paintMiute.strokeWidth = 10;

    final pathMinute = Path();
    pathMinute.moveTo(size.width / 2, size.height / 2 - 19);
    pathMinute.lineTo(size.width / 2, size.height / 2 - 90);
    canvas.drawPath(pathMinute, paintMiute);
    pathMinute.close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
