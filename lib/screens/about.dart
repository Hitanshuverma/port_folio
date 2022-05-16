import 'package:flutter/material.dart';
import 'package:port_folio/glassmorphism.dart';
import 'dart:html' as html;

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
        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width - 70,
        child: Container(
          child: getWidget(),
        ),
      ),
    );
  }

  getWidget() {
    return MediaQuery.of(context).size.width < 550
        ? Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: getChildren())
        : Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: getChildren());
  }

  getChildren() {
    return <Widget>[
      MediaQuery.of(context).size.width > 550
          ? Container(
              // height: MediaQuery.of(context).size.height + 40,
              // width: (MediaQuery.of(context).size.width - 70) / 2.5,
              margin: EdgeInsets.fromLTRB(
                  (MediaQuery.of(context).size.width - 70) / 20, 0, 0, 0),
              padding: const EdgeInsets.all(10),
              child: Glass(
                br: 20.0,
                color: Colors.black,
                blur: 0.1,
                opacity: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('aboutimg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 3 - 60,
                  height: MediaQuery.of(context).size.height,
                  child: Glass(
                    br: 20.0,
                    color: Colors.black,
                    blur: 0.1,
                    opacity: 0.1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3 - 60,
                      height: MediaQuery.of(context).size.height + 40,
                    ),
                  ),
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
              child: Glass(
                br: 20.0,
                color: Colors.black,
                blur: 0.1,
                opacity: 0.1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('aboutimg.jpg'),
                      fit: BoxFit.fill
                      // fit: BoxFit.cover,
                    ),
                  ),
                  width: 300,
                  height: MediaQuery.of(context).size.width ,
                  child: Glass(
                    br: 20.0,
                    color: Colors.black,
                    blur: 0.1,
                    opacity: 0.0,
                    child: Container(
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
              ),
            ),
      MediaQuery.of(context).size.width > 550 ? Expanded(
        child: getChild(),
      ) : Container(
        child: getChild(),
      ),
    ];
  }

  void downloadFile(String url) {
    html.AnchorElement anchorElement = new html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  getChild() {
    return Container(
      padding:
      EdgeInsets.all((MediaQuery.of(context).size.width - 70) / 30),
      // color: Colors.yellow,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: MediaQuery.of(context).size.width > 500
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          const Divider(
            thickness: 20,
            color: Colors.transparent,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 20,0,0),
                // color: Colors.pink,
                child: Text(
                  "About Me",
                  style: TextStyle(
                    fontFamily: 'Akaya',
                    fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/10 : 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
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
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Hey! My name is Hitanshu Verma and Tech enthusiast with a love '
                  'for Music and Sports. I am currently a sophomore at IIIT Bhopal '
                  'pursuing B.tech degree in Information Technology. ',
              style: TextStyle(
                fontFamily: 'Akaya',
                fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/30 : 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "I'm Assistant App Development Lead at Google Developer Student "
                  "Clubs(GDSC), IIIT Bhopal. I am an aspiring App Developer "
                  "and also exploring the field of Competitive Programming and Machine Learning. I am currently "
                  "learning App Development using Flutter and Data Structures and Algorithms. "
                  "I have good communication and interpersonal skills. Passionate in "
                  "collaborating with new people and brainstorming on topics of mutual "
                  "interest. ",
              style: TextStyle(
                fontFamily: 'Akaya',
                fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/30 : 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Experience in being in-charge of various inter/intra school '
                  'projects and held positions of responsibility as a Secretary of extracurricular activities, '
                  'which instilled necessary skills to act as a better team leader'
                  ' and a team player. ',
              style: TextStyle(
                fontFamily: 'Akaya',
                fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/30 : 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              downloadFile(
                  'https://drive.google.com/uc?export=download&id=1hE-ZQej0VxA_jocQd-XmC9kztA0IKZUD');
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
                'Download Resume',
                style: TextStyle(
                  fontFamily: 'Akaya',
                  fontSize: MediaQuery.of(context).size.width < 550 ? MediaQuery.of(context).size.width/30 : 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
