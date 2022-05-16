import 'package:flutter/material.dart';
import 'package:port_folio/glassmorphism.dart';
import 'package:port_folio/percentbar.dart';

class Skill extends StatefulWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width - 70,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/skill.gif',
            ),
          ),
        ),
        child: Glass(
          br: 0.0,
          opacity: 0.7,
          blur: 2.0,
          color: Colors.transparent,
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 30,
                      vertical: MediaQuery.of(context).size.width < 550
                          ? MediaQuery.of(context).size.height / 100
                          : 50,
                    ),
                    // color: Colors.yellow,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'MY SKILLS',
                            style: TextStyle(
                              fontFamily: 'Akaya',
                              fontSize: MediaQuery.of(context).size.width < 550
                                  ? MediaQuery.of(context).size.width / 10
                                  : 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            height: 5,
                            width: 90,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                          const Divider(
                            color: Colors.transparent,
                            height: 2,
                          ),
                          Container(
                            height: 5,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    MediaQuery.of(context).size.width < 550 ? 20 : 0,
                    0,
                    0,
                  ),
                  child: Text(
                    'some of my technical skills ',
                    style: TextStyle(
                      fontFamily: 'Akaya',
                      fontSize: MediaQuery.of(context).size.width < 550
                          ? MediaQuery.of(context).size.width / 20
                          : 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 70,
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 20,
                  ),
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    MediaQuery.of(context).size.width / 10,
                  ),
                  child: getBars(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  getBars() {
    return MediaQuery.of(context).size.width > 800
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    skill('FLUTTER'),
                    const Percentbar(
                      color: MaterialColor(0xffF58325, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 15,
                      color: Colors.transparent,
                    ),
                    skill('FIREBASE'),
                    const Percentbar(
                      color: MaterialColor(0xff255CF5, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('DART'),
                    const Percentbar(
                      color: MaterialColor(0xff94C3E9, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('HTML'),
                    const Percentbar(
                      color: MaterialColor(0xFFEE7777, {}),
                      percentage: 20,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('CSS3'),
                    const Percentbar(
                      color: MaterialColor(0xffCD09F0, {}),
                      percentage: 20,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    skill('C/C++'),
                    const Percentbar(
                      color: Colors.purple,
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 15,
                      color: Colors.transparent,
                    ),
                    skill('OOPS'),
                    const Percentbar(
                      color: MaterialColor(0xFFAAD400, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('DSA'),
                    const Percentbar(
                      color: MaterialColor(0xFFEE7777, {}),
                      percentage: 70,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('FIGMA'),
                    const Percentbar(
                      color: MaterialColor(0xFF56B7C0, {}),
                      percentage: 40,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('MONGODB'),
                    const Percentbar(
                      color: Colors.red,
                      percentage: 20,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // color: Colors.blueGrey,
                // padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    skill('FLUTTER'),
                    const Percentbar(
                      color: MaterialColor(0xffF58325, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 15,
                      color: Colors.transparent,
                    ),
                    skill('FIREBASE'),
                    const Percentbar(
                      color: MaterialColor(0xff255CF5, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('DART'),
                    const Percentbar(
                      color: MaterialColor(0xff94C3E9, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('HTML'),
                    const Percentbar(
                      color: MaterialColor(0xFFEE7777, {}),
                      percentage: 20,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('CSS3'),
                    const Percentbar(
                      color: MaterialColor(0xffCD09F0, {}),
                      percentage: 20,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    skill('C/C++'),
                    const Percentbar(
                      color: Colors.purple,
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 15,
                      color: Colors.transparent,
                    ),
                    skill('OOPS'),
                    const Percentbar(
                      color: MaterialColor(0xFFAAD400, {}),
                      percentage: 80,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('DSA'),
                    const Percentbar(
                      color: MaterialColor(0xFFEE7777, {}),
                      percentage: 70,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('FIGMA'),
                    const Percentbar(
                      color: MaterialColor(0xFF56B7C0, {}),
                      percentage: 40,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                    skill('MONGODB'),
                    const Percentbar(
                      color: Colors.red,
                      percentage: 20,
                    ),
                    const Divider(
                      thickness: 150,
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ],
          );
  }

  skill(String str) {
    return Container(
      width: MediaQuery.of(context).size.width > 800
          ? (MediaQuery.of(context).size.width - 70) / 4
          : (MediaQuery.of(context).size.width - 70) / 2.5,
      // color: Colors.yellow,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Text(
        str,
        style: TextStyle(
          fontFamily: 'Akaya',
          fontSize: MediaQuery.of(context).size.width < 550
              ? MediaQuery.of(context).size.width / 30
              : 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
