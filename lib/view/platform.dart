import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/widgets/navbar.dart';

class platform extends StatefulWidget {
  const platform({Key? key}) : super(key: key);

  @override
  _platformState createState() => _platformState();
}

class _platformState extends State<platform> {
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
                    //  color: Colors.transparent,
                    height: h * 0.5,
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
                                Text('Drive Buisness Impact\nfrom AI,',
                                    style: GoogleFonts.notoSans(
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 42,
                                        color: Colors.white)),
                                SizedBox(
                                  height: 50,
                                ),
                                Text(
                                    'Fortune 100 companies and teams use Comet to improve\nvisibility, collaboration, and productivity.',
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
                                      "Schedule a Demo",
                                      textAlign: TextAlign.center,
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
                        ]),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                ]),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/DB1.png"),
                Column(
                  children: [
                    Text(
                      "Track and\nCompare",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Easily compare experiments—code,\nhyperparameters, metrics, predictions,\ndependencies, system metrics, and more—\nto understand differences in model\nperformance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Track and\nCompare",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Easily compare experiments—code,\nhyperparameters, metrics, predictions,\ndependencies, system metrics, and more—\nto understand differences in model\nperformance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                Image.asset("assets/images/DB2.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/DB3.png"),
                Column(
                  children: [
                    Text(
                      "Track and\nCompare",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Easily compare experiments—code,\nhyperparameters, metrics, predictions,\ndependencies, system metrics, and more—\nto understand differences in model\nperformance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Track and\nCompare",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Easily compare experiments—code,\nhyperparameters, metrics, predictions,\ndependencies, system metrics, and more—\nto understand differences in model\nperformance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                Image.asset("assets/images/DB4.png"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/images/DB5.png"),
                Column(
                  children: [
                    Text(
                      "Track and\nCompare",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 42,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Easily compare experiments—code,\nhyperparameters, metrics, predictions,\ndependencies, system metrics, and more—\nto understand differences in model\nperformance",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(children: [
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
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    color: Colors.white,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: FaIcon(
                                          FontAwesomeIcons.facebookSquare),
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: FaIcon(
                                          FontAwesomeIcons.youtubeSquare),
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: FaIcon(
                                          FontAwesomeIcons.twitterSquare),
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: FaIcon(FontAwesomeIcons.linkedin),
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ])
          ],
        )));
  }
}
