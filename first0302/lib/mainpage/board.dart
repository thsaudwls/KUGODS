import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Board extends StatefulWidget {
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  TextEditingController textController = TextEditingController();

  @override
  void handleSubmitted(String text) {
    textController.clear();
  }

  Widget build(BuildContext context) {
    final screenw = MediaQuery.of(context).size.width;
    final screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0,
          title: Text(
            'board',
            style: TextStyle(color: Color.fromARGB(255, 204, 157, 157)),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, screenh * 0.01, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: screenh * 0.02),
                    width: screenw * 0.9,
                    child: Text(
                      "🌸 인기 게시물 🌸",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, screenh * 0.02, 0, 0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 192, 192, 192),
                                blurRadius: 5.0,
                                spreadRadius: 0,
                                offset: Offset(0, 5),
                              ),
                            ]),
                        child: Image.asset(
                          'assets/images/001.jpeg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 192, 192, 192),
                                blurRadius: 5.0,
                                spreadRadius: 0,
                                offset: Offset(0, 5),
                              ),
                            ]),
                        child: Image.asset(
                          'assets/images/002.jpeg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 192, 192, 192),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              offset: Offset(0, 5),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 192, 192, 192),
                              blurRadius: 5.0,
                              spreadRadius: 0,
                              offset: Offset(0, 5),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenh * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '🌱 주간 게시물 🌱',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenh * 0.02),
                  height: screenh * 0.25,
                  width: screenw * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          blurRadius: 5.0,
                          spreadRadius: 0,
                          offset: Offset(0, 5),
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenh * 0.02),
                  height: screenh * 0.25,
                  width: screenw * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          blurRadius: 5.0,
                          spreadRadius: 0,
                          offset: Offset(0, 5),
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenh * 0.02),
                  height: screenh * 0.25,
                  width: screenw * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          blurRadius: 5.0,
                          spreadRadius: 0,
                          offset: Offset(0, 5),
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
