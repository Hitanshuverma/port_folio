import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:port_folio/glassmorphism.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.width > 550 ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width - 70,
      child: Container(
        child: getWidget(),
      ),
    );
  }

  getWidget() {
    return MediaQuery.of(context).size.width < 550
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: getChildren())
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: getChildren());
  }

  getChildren() {
    return <Widget>[
      MediaQuery.of(context).size.width > 550
          ? Container(width: 0)
          : Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 20),
              child: Glass(
                br: 20.0,
                color: Colors.white,
                blur: 0.1,
                opacity: 0.1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/hitanshu.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 300,
                  height: 300,
                  child: Glass(
                    br: 20.0,
                    color: Colors.white,
                    blur: 1,
                    opacity: 0.2,
                    child: Container(
                      width: 300,
                      height: 300,
                    ),
                  ),
                ),
              ),
            ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: MediaQuery.of(context).size.width > 500
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            // color: Colors.blue,
            child: Row(
              children: [
                Text(
                  "I'm ",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width < 800
                        ? MediaQuery.of(context).size.width / 20 - 1
                        : 43.0,
                    fontFamily: 'Akaya',
                  ),
                ),
                Text(
                  "Hitanshu Verma",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width < 800
                        ? MediaQuery.of(context).size.width / 20 - 1
                        : 43.0,
                    fontFamily: 'Akaya',
                    color: const Color(0xff332A7C),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 160,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width < 800
                      ? MediaQuery.of(context).size.width / 10
                      : 80.0,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0, height: 100.0),
                      Text(
                        '- A',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width < 800
                              ? MediaQuery.of(context).size.width / 20 - 1
                              : 43.0,
                          fontFamily: 'Akaya',
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width < 800
                              ? MediaQuery.of(context).size.width / 40
                              : 20.0,
                          height: 100.0),
                      DefaultTextStyle(
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width < 800
                                ? MediaQuery.of(context).size.width / 20 - 2
                                : 40.0,
                            fontFamily: 'Akaya',
                            color: Colors.black),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            RotateAnimatedText(
                              'C++ Programmer',
                              textStyle: const TextStyle(
                                color: Color(0xff332A7C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RotateAnimatedText(
                              'Competitive Coder',
                              textStyle: const TextStyle(
                                color: Color(0xff332A7C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RotateAnimatedText(
                              'Flutter Developer',
                              textStyle: const TextStyle(
                                color: Color(0xff332A7C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RotateAnimatedText(
                              'Tech Enthusiast',
                              textStyle: const TextStyle(
                                color: Color(0xff332A7C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RotateAnimatedText(
                              ' Vocalist',
                              textStyle: const TextStyle(
                                color: Color(0xff332A7C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RotateAnimatedText(
                              ' Guitarist',
                              textStyle: const TextStyle(
                                color: Color(0xff332A7C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            width: MediaQuery.of(context).size.width > 500
                ? MediaQuery.of(context).size.width / 2
                : MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.width > 500
                ? MediaQuery.of(context).size.width / 10
                : 40,
            // color: Colors.green,
            child: socialLinks(),
          ),
        ],
      ),
      MediaQuery.of(context).size.width < 550
          ? Container(width: 0)
          : Container(
              padding: const EdgeInsets.only(right: 40),
              child: Glass(
                br: 20.0,
                color: Colors.white,
                blur: 0.1,
                opacity: 0.1,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/hitanshu.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 3 - 60,
                  height: MediaQuery.of(context).size.width / 3,
                  child: Glass(
                    br: 20.0,
                    color: Colors.white,
                    blur: 1,
                    opacity: 0.2,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3 - 60,
                      height: MediaQuery.of(context).size.width / 3,
                    ),
                  ),
                ),
              ),
            ),
    ];
  }

  Widget socialLinks() {
    return Row(
      mainAxisAlignment: MediaQuery.of(context).size.width > 503
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: MediaQuery.of(context).size.width < 700 ? 0 : 10),
          height: MediaQuery.of(context).size.width > 500
              ? MediaQuery.of(context).size.width / 23
              : 30,
          // color: Colors.pink,
          child: ElevatedButton(
            onPressed: () {
              _launchUrl('https://www.instagram.com/hitanshu_verma/');
            },
            child: Image(
              height: MediaQuery.of(context).size.width > 925 ? 30 : 25,
              width: MediaQuery.of(context).size.width > 925 ? 30 : 25,
              image: const AssetImage('assets/insta.png'),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.pink),
              backgroundColor: MaterialStateProperty.all(Colors.grey[600]),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(MediaQuery.of(context).size.width / 150),
              ),
              shape: MaterialStateProperty.all(
                const CircleBorder(),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: MediaQuery.of(context).size.width < 700 ? 0 : 10),
          height: MediaQuery.of(context).size.width > 500
              ? MediaQuery.of(context).size.width / 23
              : 30,
          // color: Colors.grey,
          child: ElevatedButton(
            onPressed: () {
              _launchUrl(
                  'https://www.linkedin.com/in/hitanshu-verma-8798bb200/');
            },
            child: Image(
              height: MediaQuery.of(context).size.width > 925 ? 25 : 20,
              width: MediaQuery.of(context).size.width > 925 ? 25 : 20,
              image: const AssetImage('assets/link.png'),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                const Color(0xff0E76A8),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.grey[600]),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(MediaQuery.of(context).size.width / 150),
              ),
              shape: MaterialStateProperty.all(
                const CircleBorder(),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: MediaQuery.of(context).size.width < 700 ? 0 : 10),
          height: MediaQuery.of(context).size.width > 500
              ? MediaQuery.of(context).size.width / 23
              : 30,
          // color: Colors.blue,
          child: ElevatedButton(
            onPressed: () {
              _launchUrl('https://twitter.com/Verma_Sahab07');
            },
            child: Image(
              height: MediaQuery.of(context).size.width > 925 ? 30 : 25,
              width: MediaQuery.of(context).size.width > 925 ? 30 : 25,
              image: const AssetImage('assets/twit.png'),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                const Color(0xff00acee),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.grey[600]),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(MediaQuery.of(context).size.width / 150),
              ),
              shape: MaterialStateProperty.all(
                const CircleBorder(),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: MediaQuery.of(context).size.width < 700 ? 0 : 10),
          height: MediaQuery.of(context).size.width > 500
              ? MediaQuery.of(context).size.width / 23
              : 30,
          // color: Colors.lime,
          child: ElevatedButton(
            onPressed: () {
              _launchUrl('https://github.com/Hitanshuverma');
            },
            child: Image(
              height: MediaQuery.of(context).size.width > 925 ? 35 : 30,
              width: MediaQuery.of(context).size.width > 925 ? 35 : 30,
              image: const AssetImage('assets/github.png'),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.white),
              backgroundColor: MaterialStateProperty.all(Colors.grey[600]),
              elevation: MaterialStateProperty.all(10),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(MediaQuery.of(context).size.width / 150),
              ),
              shape: MaterialStateProperty.all(
                const CircleBorder(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

_launchUrl(String link) async {
  if (await canLaunch(link)) {
    await launch(link);
  } else {
    throw 'Could not launch $link';
  }
}
