import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webapp/generative/devanim.dart';

class abc extends StatefulWidget {
  abc({Key? key}) : super(key: key);

  @override
  _abcState createState() => _abcState();
}

class _abcState extends State<abc> {
  showMenus(BuildContext context) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 100, 100, 100),
      items: [
        PopupMenuItem(
          child: ElevatedButton(
            child: Text("View"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Devanim()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: Text("Edit"),
        ),
        PopupMenuItem(
          child: Text("Delete"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        opaque: false,
        //  cursor: MouseCursor.defer,
        onHover: (event) => showMenus(context),
        child: OutlineButton(
          hoverColor: Colors.blue,
          onPressed: () {},
          child: Text("resources"),
        ),
      ),
    );
  }
}
