import 'package:flutter/material.dart';
import 'package:port_folio/screens/horizontal_scroll.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int index = 0;
  void getIndex(int val) {
    setState(() {
      index = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        width: width,
        child: Container(
          child: Column(
            children: [
              Container(
                // color: Colors.pink,
                width: width,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 30,
                    vertical: MediaQuery.of(context).size.width < 550
                        ? MediaQuery.of(context).size.height / 20
                        : 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PROJECTS',
                        style: TextStyle(
                          fontFamily: 'Akaya',
                          fontSize: MediaQuery.of(context).size.width < 550
                              ? MediaQuery.of(context).size.width / 10
                              : 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 5,
                        width: 90,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
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
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                // height: heightContainer,
                // color: Colors.blueGrey,
                child: getWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getWidget() {
    return MediaQuery.of(context).size.width < 621
        ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: getChildren(),
          )
        : Row(
            children: getChildren(),
          );
  }

  getChildren() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width -
        (MediaQuery.of(context).size.width > 621 ? 66 : 0);
    double heightContainer = width > 550 ? (4 * height) / 5 : height / 2;

    List<String> heading = [
      'Event Manager App',
      "Maharana Foundation's App",
      'MS Teams Companion App',
      'Dice App',
    ];

    List<String> details = [
      'An Event Manager Application Designed To help you '
          ' organise an event with elaborated functionality and '
          'easy to use but visually pleasing user interface',
      'An Application developed for MAHARANA FOUNDATION '
          'equipped with all the basic functionality a firm would '
          'need to maintain its user database and a admin dashboard'
          ' to maintain all the data',
      'An Application solely dedicated to resolve the issue of'
          ' sorting the attendance sheet provided by MS Teams according'
          ' to the users preferences',
      'An Basic Dice app developed with the functionality to change colors'
          ' and a good reference point for new flutter developers',
    ];

    List<String> github = [
      'Github Event Manager ',
      'Github Maharana Foundation ',
      'Github MS Teams Companion',
      'Github Dicee',
    ];

    List<String> links = [
      "https://github.com/Hitanshuverma/Event-Manager-App.git",
      "https://github.com/Hitanshuverma/Maharana_Foundation.git",
      "https://github.com/Hitanshuverma/flutter-teams-companion-app.git",
      "https://github.com/Hitanshuverma/Dice-App.git",
    ];


    return [
      width > 621
          ? Container()
          : Container(
              // color: Colors.green,
              height: heightContainer/1.5,
              width: width > 621 ? width / 2 : width,
              child: Hscroll(getIndex: getIndex),
            ),
      Container(
        // color: Colors.yellow,
        padding: EdgeInsets.all(40),
        // height: heightContainer + 20,
        width: width > 621 ? width / 2 : width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 20,0,0),
              // color: Colors.pink,
              child: Text(
                heading[index],
                style: TextStyle(
                  fontFamily: 'Akaya',
                  fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/15 : 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),
              child: Text(
                details[index],
                style: TextStyle(
                  fontFamily: 'Akaya',
                  fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/30 : 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 20),
              child: ElevatedButton(
                onPressed: () {
                  _launchUrl(links[index]);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff332A7C),
                  ),
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    github[index],
                    style: TextStyle(
                      fontFamily: 'Akaya',
                      fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/30 : 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      width < 620
          ? Container()
          : Container(
              // color: Colors.green,
              height: heightContainer,
              width: width > 550 ? width / 2 : width,
              child: Hscroll(getIndex: getIndex),
            ),
    ];
  }
}

_launchUrl(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    throw 'Could not launch $link';
  }
}

class CurvedPainter extends CustomPainter {
  const CurvedPainter({Key? key});
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color(0x70332A7C)
      ..strokeWidth = 15;

    var path = Path();

    path.moveTo((size.width / 4), 0);
    path.lineTo(size.width, 0);
    path.lineTo((size.width), 6 * (size.height / 11));
    path.moveTo(size.width / 4, 0);
    path.arcToPoint(
      Offset((size.width), 6 * (size.height / 11)),
      radius: Radius.circular(19 * size.width / 40),
      clockwise: false,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    );
  }
}

//Container(
//   child: Center(
//     child: CustomPaint(
//       size: Size(height, width),
//       painter: const CurvedPainter(),
//       child: Container(
//         height: height,
//         width: width,
//         child: Row(
//           children: [
//             Container(
//               //color: Colors.yellow,
//               width: width / 20,
//             ),
//             Container(
//               //color: Colors.red,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: height / 2,
//                   ),
//                   Container(
//                     child: Text('hello world'),
//                   ),
//                   Divider(
//                     height: 10,
//                   ),
//                   Container(
//                     child: Text(
//                         'sirehg isurh gioushdfighs eurnhgf hgv hjtyu '),
//                   ),
//                   Divider(
//                     height: 50,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       if(initialised = true)
//                         {
//                           projectController!.forward();
//                         }
//                       else
//                         {
//                           print(initialised);
//                         }
//                     },
//                     child: Text(
//                       'GITHUB REPO',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(
//                         const Color(0xff332A7C),
//                       ),
//                       shape: MaterialStateProperty.all(
//                         const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(40),
//                             bottomLeft: Radius.circular(40),
//                             topRight: Radius.circular(40),
//                             bottomRight: Radius.circular(40),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // color: Color(0x4add4aaa),
//               width: width / 1.5,
//               child: Transform.rotate(
//                 angle: 1.0,
//                 child: Container(
//                   margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
//                   width: 10,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.black),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Stack(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.all(150),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           // color: Color(0x4abbccdd),
//                           shape: BoxShape.circle,
//                         ),
//                       ),
//                       Positioned(
//                         left: 465,
//                         top: 0,
//                         child: Square(),
//                       ),
//                       Positioned(
//                         left: 300,
//                         top: 50,
//                         child: Square(),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ),
// ),
