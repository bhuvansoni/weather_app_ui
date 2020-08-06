import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2 -
                MediaQuery.of(context).padding.top,
            decoration: BoxDecoration(
              // border: Border(),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55.0, left: 30),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Text(
                  'Welcome to kerela',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          color: Colors.transparent.withOpacity(0.5),
                          padding: EdgeInsets.all(20),
                          // height: 10000,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 18.0),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.lightGreen[800],
                                  child: Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '27°',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                ),
                              ),
                              Text(
                                'Cloudy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          // color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height / 2 * 0.6,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal[900],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 18.0, 8.0, 8.0),
                                child: Icon(
                                  Icons.map,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 8.0, 8.0, 20.0),
                                child: Text(
                                  'Attractive Places',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height / 2 * 0.4,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightGreen[100],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 18.0, 8.0, 8.0),
                                child: Icon(
                                  Icons.list,
                                  size: 40,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 8.0, 8.0, 20.0),
                                child: Text(
                                  'Things to \ndo',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height / 2 * 0.4,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.greenAccent[200],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 18.0, 8.0, 8.0),
                                child: Icon(
                                  Icons.wb_cloudy,
                                  size: 40,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 8.0, 8.0, 20.0),
                                child: Text(
                                  'Weather',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height / 2 * 0.6,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 20.0, 8.0, 8.0),
                                child: Icon(
                                  Icons.star_border,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    18.0, 8.0, 8.0, 20.0),
                                child: Text(
                                  'Saved \nPlaces',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontFamily: GoogleFonts.roboto().fontFamily,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
