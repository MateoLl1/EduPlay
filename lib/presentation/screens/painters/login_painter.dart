
import 'package:flutter/material.dart';

class LoginPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    final lapiz = Paint();
    final lapiz2 = Paint();

    lapiz.color = Colors.blueAccent;
    lapiz.strokeWidth = 10;
    lapiz.style = PaintingStyle.fill;
    lapiz2.color = Colors.deepPurple;
    lapiz2.strokeWidth = 10;
    lapiz2.style = PaintingStyle.fill;

    path.moveTo(size.width*.4, 0);
    path.arcToPoint(
      Offset(size.width, size.height*.2),
      radius: const Radius.circular(20),
      clockwise: false
    );
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
    path.reset();

    path.moveTo(size.width, size.height*.4);
    path.arcToPoint(
      Offset(size.width, size.height*.1),
      radius: const Radius.circular(20)
    );
    canvas.drawPath(path, lapiz2);
    
  
  }

  @override
  bool shouldRepaint(LoginPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(LoginPainter oldDelegate) => false;
}