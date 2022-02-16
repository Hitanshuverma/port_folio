import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // key: _itemkey,
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width - 70,
        color: Colors.red[900],
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 5, // Space between underline and text
              ),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xff263238),
                width: 2.0, // Underline thickness
              ))),
              child: const Text(
                'ABOUT',
                style: TextStyle(
                  fontFamily: 'Akaya',
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff263238),
                ),
              ),
            ),
            Container(
              // color: Colors.yellow,
              margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: MediaQuery.of(context).size.width < 500
                      ? MediaQuery.of(context).size.width / 6
                      : MediaQuery.of(context).size.width / 5),
              // decoration: BoxDecoration(
              //
              // ),
              child: const Text(
                'Hey! My name is Mishthi Singhal and I am currently a sophomore at IIIT Bhopal pursuing B.tech degree in Computer Science. Im Core Team member at IIITians Network-Student Tech Community and Google Developer Student Clubs(GDSC),IIIT Bhopal. I am an aspiring Full Stack Web Developer and also exploring the feild of Competitive Programming. I am currently learning Backend Development and Data Structures and Algorithms. I have good communication and interpersonal skills and look forward to listen ideas of other people.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Akaya',
                  letterSpacing: 1,
                ),
              ),
            ),
            const Divider(
              height: 30,
              color: Colors.transparent,
            ),
            Container(
              // color: Colors.yellow,
              margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: MediaQuery.of(context).size.width / 5),
              // decoration: BoxDecoration(
              //
              // ),
              child: const Text(
                'Hey! My name is Mishthi Singhal and I am currently a sophomore at IIIT Bhopal pursuing B.tech degree in Computer Science. Im Core Team member at IIITians Network-Student Tech Community and Google Developer Student Clubs(GDSC),IIIT Bhopal. I am an aspiring Full Stack Web Developer and also exploring the feild of Competitive Programming. I am currently learning Backend Development and Data Structures and Algorithms. I have good communication and interpersonal skills and look forward to listen ideas of other people.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Akaya',
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
