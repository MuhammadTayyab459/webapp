import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:webapp/generative/particles.dart';
import 'package:webapp/view/Enterprise.dart';
import 'package:webapp/view/platform.dart';
//import 'package:webapp/view/home.dart';
//import 'package:webapp/particles.dart';

import 'mypaintercanvas.dart';

class Devanim extends StatefulWidget {
  Devanim({
    Key? key,
  }) : super(key: key);

  _DevanimState createState() => _DevanimState();
}

// ignore: non_constant_identifier_names
Color GetRandomColor(Random rgn) {
  var a = rgn.nextInt(255);
  var r = rgn.nextInt(255);
  var g = rgn.nextInt(255);
  var b = rgn.nextInt(255);

  return Color.fromARGB(a, r, g, b);
}

/*Image imag(Image ima) {
  ima = Image.asset("assets/images/4.jpg");
  return ima;
}*/

double Maxradius = 6;
double MaxSpeed = 2;
double MaxTheta = 2.0 * pi;

class _DevanimState extends State<Devanim> with SingleTickerProviderStateMixin {
  late List<particle> particles;
  late Animation<double> animation;
  late AnimationController controller;
  Random rgn = Random(DateTime.now().millisecondsSinceEpoch);
  //late Image ima;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3600));
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    /*..addListener(status) {
        if (status==AnimationStatus.completed) {
          controller.repeat();
        }else if{ status==AnimationStatus.dismissed){
          controller.forward();
        }

        }
       };*/
    controller.forward();
    this.particles = List.generate(100, (index) {
      var p = particle();
      p.color = GetRandomColor(rgn);
      p.position = Offset(-1, -1);
      p.speed = rgn.nextDouble() * MaxSpeed;
      p.theta = rgn.nextDouble() * MaxTheta;
      p.radius = rgn.nextDouble() * Maxradius;

      return p;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //  appBar: AppBar(),
        body: CustomPaint(
          // size: Size(50, 50),
          //foregroundPainter: MyPainterCanvas(rgn, particles, animation.value),
          painter: MyPainterCanvas(rgn, particles, animation.value),
          child: Container(
            child: platform(),
          ),
        ));
  }
}
