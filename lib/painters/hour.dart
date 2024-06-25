import 'package:flutter/material.dart';

class Hour extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintHour = Paint();
    paintHour.color = Colors.red;
    paintHour.style = PaintingStyle.stroke;
    paintHour.strokeWidth = 7;

    final pathHour = Path();
    pathHour.moveTo(size.width / 2, size.height / 2 - 19);
    pathHour.lineTo(size.width / 2, size.height / 2 - 70);
    canvas.drawPath(pathHour, paintHour);
    pathHour.close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
