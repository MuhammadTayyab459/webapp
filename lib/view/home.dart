import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:webapp/videoplayer/videoplayer.dart';
import 'package:webapp/widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        actions: [navbar()],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    //color: Colors.transparent,
                    height: h * 0.6,
                    width: w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/background.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 70, top: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Build Better\nmodels faster',
                                    style: GoogleFonts.notoSans(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 42,
                                        color: Colors.white)),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                    'Digicano enables developers and teams to track, compare,\nexplain and optimize experiments and models across the model’s \nentire lifecycle. From training to production. With just two lines of code,\nyou can start building better models today',
                                    style: GoogleFonts.notoSans(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 18,
                                        color: Colors.white)),
                                SizedBox(
                                  height: 50,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Get Started to Free",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        enableFeedback: true,
                                        primary: Colors.orange,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 20),
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal))),
                              ],
                            ),
                          ),
                          //SizedBox(width: 50),
                        ]),
                  ),
                ]),
              ],
            ),
            Positioned(
              top: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, bottom: 0),
                        child: Container(
                          width: 800,
                          height: 500,
                          child: Expanded(child: videoplayer()),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Testimonals",
                  style: TextStyle(fontSize: 42, color: Colors.blue[900]),
                  //Color(6050F5)
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Image(image: AssetImage("assets/images/1.png")),
                ),
                Container(
                  child: Image(image: AssetImage("assets/images/2.jpg")),
                ),
                Container(
                  child: Image(image: AssetImage("assets/images/3.png")),
                ),
                Container(
                  child: Image(image: AssetImage("assets/images/4.jpg")),
                ),
                Container(
                  child: Image(image: AssetImage("assets/images/5.jpg")),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Who is degicano for ",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[500]),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  width: 400,
                  // color: Colors.grey,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/ent.png")),
                      SizedBox(height: 20),
                      Text(
                        "Moeez Suleman\n",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 32),
                      ),
                      Text(
                        "       Teams and organizations use Comet to\n       improve visibility, collaboration, and\n       productivity, driving business value from AI.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "learn more",
                            style: TextStyle(fontSize: 22),
                          ))
                    ],
                  ), /* ,
                */
                ),
                Container(
                  height: 400,
                  width: 400,
                  // color: Colors.grey,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/ind.png")),
                      SizedBox(height: 20),
                      Text(
                        "AbuBakar Siddique\n",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 32),
                      ),
                      Text(
                        "       Track, compare, explain, and reproduce\n       your ML experiments. Leverage insights\n       and data to build better models, faster.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "learn more",
                            style: TextStyle(fontSize: 22),
                          ))
                    ],
                  ), /* ,
                */
                ),
                Container(
                  height: 400,
                  width: 400,
                  // color: Colors.grey,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/acad.png")),
                      SizedBox(height: 20),
                      Text(
                        "Muhammad TAYYAB\n",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 32),
                      ),
                      Text(
                        "       Easily track, compare, explain, and\n       reproduce your ML experiments. Publish\n       reproducible papers and easily.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "learn more",
                            style: TextStyle(fontSize: 22),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Partners",
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[500]),
                  ),
                ]),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image(image: AssetImage("assets/images/a.png")),
                        SizedBox(height: 25),
                        Image(image: AssetImage("assets/images/f.png")),
                      ],
                    ),
                    SizedBox(width: 75),
                    Column(
                      children: [
                        Image(image: AssetImage("assets/images/b.png")),
                        SizedBox(height: 25),
                        Image(image: AssetImage("assets/images/g.png")),
                      ],
                    ),
                    SizedBox(width: 75),
                    Column(
                      children: [
                        Image(image: AssetImage("assets/images/c.png")),
                        SizedBox(height: 25),
                        Image(image: AssetImage("assets/images/h.png")),
                      ],
                    ),
                    SizedBox(width: 75),
                    Column(
                      children: [
                        Image(image: AssetImage("assets/images/d.png")),
                        SizedBox(height: 25),
                        Image(image: AssetImage("assets/images/i.png")),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: h * 0.5,
                  width: w,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: Container(
                                height: 80,
                                width: 80,
                                child: Image(
                                    image:
                                        AssetImage("assets/images/Logo.png")),
                              ),
                            ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(children: [
                            Text(
                              "Product",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "abc",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "def",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "ghi",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(children: [
                            Text(
                              "Resources",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "abc",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "def",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "ghi",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(children: [
                            Text(
                              "Company",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "abc",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "def",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                            SizedBox(
                              height: 25,
                            ),
                            OutlineButton(
                                onPressed: () {},
                                hoverColor: Colors.black,
                                borderSide: BorderSide.none,
                                child: Text(
                                  "ghi",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white70),
                                )),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Column(
                            children: [
                              Text(
                                "Subscribe to stay tuned for news and\nlatest updates",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),

                              // IconButton(onPressed: (){}, icon: Icon(Icons.linkedin))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
              /* Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("assets/images/Logo.png"))
                  ],
                ),
                Column(),
                Column(),
                Column(),
                Column(),
              ],*/
            ),
          ],
        ),
      ),
    );
  }
}
