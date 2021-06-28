import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/generative/mypainter.dart';
//import 'package:webapp/view/footer.dart';
import 'package:webapp/widgets/navbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Enterprise extends StatefulWidget {
  const Enterprise({Key? key}) : super(key: key);

  @override
  _EnterpriseState createState() => _EnterpriseState();
}

class _EnterpriseState extends State<Enterprise> {
  @override
  void initState() {
    super.initState();
    mypainter();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          actions: [navbar()],
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              ]),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hundreds of Teams Build Models with Comet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 42,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 200),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/1.png"),
                    Image.asset("assets/images/2.jpg"),
                    Image.asset("assets/images/3.png"),
                    Image.asset("assets/images/4.jpg"),
                    Image.asset("assets/images/5.jpg"),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Empowering The Data-Driven Enterprise",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 42,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
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
          ),
        ])));
  }
}
