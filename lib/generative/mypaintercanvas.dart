import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:webap/mypainter.dart';
//import 'package:webapp/particles.dart';

import 'particles.dart';
//import 'package:generative_art/image.dart';

Offset PolarToCartesian(double speed, double theta) {
  return Offset(speed * cos(theta), speed * sin(theta));
}

class MyPainterCanvas extends CustomPainter {
  List<particle> particles;
  Random rgn;
  double AnimVal;
  MyPainterCanvas(this.rgn, this.particles, this.AnimVal);

  @override
  void paint(Canvas canvas, Size size) {
    this.particles.forEach((p) {
      var velocity = PolarToCartesian(p.speed, p.theta);
      var dx = p.position.dx + velocity.dx;
      var dy = p.position.dy + velocity.dy;
      if (p.position.dx < 0 || p.position.dx > size.width) {
        dx = rgn.nextDouble() * size.width;
      }
      if (p.position.dy < 0 || p.position.dy > size.height) {
        dy = rgn.nextDouble() * size.height;
      }
      p.position = Offset(dx, dy);
    });
    this.particles.forEach((p) {
      var paint = Paint();
      paint.color = Colors.red;
      // canvas.drawImage(Image(), p.position, paint);
      canvas.drawCircle(p.position, p.radius, paint);
      //canvas.drawPicture(imag(ima));
    });

    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter o) {
    // TODO: implement shouldRepaint
    return true;
  }
}
