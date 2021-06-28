import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:webapp/generative/devanim.dart';
import 'package:webapp/generative/enterpriseenim.dart';
import 'package:webapp/generative/homeanim.dart';
import 'package:webapp/generative/mypainter.dart';
import 'package:webapp/view/Enterprise.dart';
import 'package:webapp/view/abc.dart';
import 'package:webapp/view/form.dart';
import 'package:webapp/view/home.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  // String name = "Platform";
  // String nmae2 = 'Resources';
  // var items = ['Experiment Managment', 'Workspaces', 'Panels'];
  // var items2 = ['Documentation', 'FAQ', 'Blog'];
  showMenus() {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(300, 30, 50, 0),
      items: [
        PopupMenuItem(
          child: Text("Experiance"),
        ),
        PopupMenuItem(
          child: Text("Workspace"),
        ),
        PopupMenuItem(
          child: Text("Panles"),
        ),
      ],
    );
  }

  showMenus2(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(050, 0, 50, 0),
      items: [
        PopupMenuItem(
          child: Text("Documentation"),
        ),
        PopupMenuItem(
          child: Text("FAQ"),
        ),
        PopupMenuItem(
          child: Text("Blog"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // void choiceAction(String choice) {
    //   if (choice == Constants.Panel) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => enterpriseanim()),
    //     );
    //   } else if (choice == Constants.Experience) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => enterpriseanim()),
    //     );
    //   } else if (choice == Constants.WorkSpace) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => enterpriseanim()),
    //     );
    //   }
    // }

    // void choiceAction2(String choice) {
    //   if (choice == Constants.Documentation) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => enterpriseanim()),
    //     );
    //   } else if (choice == Constants.FAQ) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => enterpriseanim()),
    //     );
    //   } else if (choice == Constants.Blog) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => enterpriseanim()),
    //     );
    //   }
    //}

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Row(
      children: [
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => homeanim()),
              );
            },
            child: Image(image: AssetImage("assets/images/Logo.png"))),
        SizedBox(
          width: w * 0.2,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 300.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlineButton(
                hoverColor: Colors.black,
                // color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => enterpriseanim()),
                  );
                },
                child: Text(
                  "Enterprise",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                borderSide: BorderSide.none,
              ),
              OutlineButton(
                hoverColor: Colors.black,
                // color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Devanim()),
                  );
                },
                child: Text(
                  "Developers",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                borderSide: BorderSide.none,
              ),
              OutlineButton(
                hoverColor: Colors.black,
                // color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => enterpriseanim()),
                  );
                },
                child: Text(
                  "Pricing",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                borderSide: BorderSide.none,
              ),
              OutlineButton(
                onPressed: () {},
                hoverColor: Colors.black,
                borderSide: BorderSide.none,
                child: MouseRegion(
                  //cursor: MouseCursor.uncontrolled,
                  //onExit: (event) => !(showMenus(context)),
                  onHover: (event) => showMenus(),
                  child: Text(
                    "Resources ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              //  abc(),
              // InkWell(
              //     child: Text("Resources",
              //         style: TextStyle(color: Colors.white, fontSize: 20)),
              //     onHover: (event) => showMenus(context))
              // OutlineButton(
              //   autofocus: false,
              //   mouseCursor: MaterialStateMouseCursor.textable,
              //   hoverColor: Colors.black,
              //   borderSide: BorderSide.none,
              //   onPressed: () {},
              //   child: PopupMenuButton<String>(
              //     // icon: Icon(Icons.keyboard_arrow_down),
              //     child: Text(
              //       'Resources',
              //       style: TextStyle(color: Colors.white, fontSize: 20),
              //     ),
              //     onSelected: choiceAction,
              //     itemBuilder: (BuildContext context) {
              //       return Constants.choices.map((String choice) {
              //         return PopupMenuItem<String>(
              //           value: choice,
              //           child: Text(choice),
              //         );
              //       }).toList();
              //     },
              //   ),
              // ),

              OutlineButton(
                onPressed: () {},
                hoverColor: Colors.black,
                borderSide: BorderSide.none,
                child: MouseRegion(
                  cursor: MouseCursor.uncontrolled,
                  onExit: (event) {},
                  onHover: (event) => showMenus2(context),
                  child: Text(
                    "Company ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              OutlineButton(
                hoverColor: Colors.black,
                // color: Colors.red,
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                borderSide: BorderSide.none,
              ),
              Container(
                child: OutlineButton(
                  hoverColor: Colors.yellow,
                  // color: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Textfrm()),
                    );
                  },
                  child: Text(
                    "Create an Account",
                    style: TextStyle(color: Colors.orange, fontSize: 20),
                  ),
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// class Constants {
//   static const String Panel = 'Panel';
//   static const String WorkSpace = 'WorkSpace';
//   static const String Experience = 'Experience';
//   static const String Documentation = 'Documentation';
//   static const String FAQ = 'FAQ';
//   static const String Blog = 'Blog';

//   static const List<String> choices = <String>[
//     Panel,
//     WorkSpace,
//     Experience,
//   ];
//   static const List<String> choices2 = <String>[
//     Documentation,
//     FAQ,
//     Blog,
//   ];
// }
