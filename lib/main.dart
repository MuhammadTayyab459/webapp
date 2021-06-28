import 'package:flutter/material.dart';
import 'package:webapp/generative/mypainter.dart';
import 'package:webapp/view/abc.dart';
import 'package:webapp/view/form.dart';
import 'package:webapp/view/platform.dart';
import 'package:webapp/widgets/navbar.dart';
import 'view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Degicano',
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.red),
      home: mypainter(),
    );
  }
}
