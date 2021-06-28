import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webapp/generative/devanim.dart';

class abc extends StatefulWidget {
  abc({Key? key}) : super(key: key);

  @override
  _abcState createState() => _abcState();
}

class _abcState extends State<abc> {
  var _tapPosition;

  showMenus(BuildContext context) async {
    final RenderBox bar = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    // final RelativeRect position = buttonMenuPosition(context);
    await showMenu(
      context: context,
      position: RelativeRect.fromRect(
          _tapPosition & Size(40, 40), // smaller rect, the touch area
          Offset.zero & overlay.size //igger rect, the entire screen
          ),
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

  RelativeRect buttonMenuPosition(BuildContext context) {
    final RenderBox bar = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context)!.context.findRenderObject() as RenderBox;
    const Offset offset = Offset.zero;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        bar.localToGlobal(bar.size.centerRight(offset), ancestor: overlay),
        bar.localToGlobal(bar.size.centerRight(offset), ancestor: overlay),
      ),
      offset & overlay.size,
    );
    return position;
  }

  @override
  void initState() {
    _tapPosition = Offset(0.0, 0.0);
    super.initState();
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
