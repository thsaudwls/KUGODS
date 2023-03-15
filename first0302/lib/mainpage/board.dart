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
              padding:
                  EdgeInsets.fromLTRB(screenw * 0.05, screenh * 0.01, 0, 0),
              child: Text(
                "인기 게시물",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
