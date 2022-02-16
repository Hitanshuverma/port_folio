import 'package:flutter/material.dart';
import 'package:port_folio/glassmorphism.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffbdbdbd),
            Color(0xffbdbdbd),
            Color(0xff424242),
            Color(0xff212121),
          ],
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 70,
      // child: Row(
      //   children: [
      //     Container(
      //       height: MediaQuery.of(context).size.height / 2,
      //       width: (MediaQuery.of(context).size.width - 70) / 2,
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       height: MediaQuery.of(context).size.height / 2,
      //       width: (MediaQuery.of(context).size.width - 70) / 2,
      //       color: Colors.green,
      //     ),
      //   ],
      // ),
    );
  }
}
