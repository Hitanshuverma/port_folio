import 'package:flutter/material.dart';
import 'package:neon/neon.dart';
import 'package:port_folio/glassmorphism.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width - 70;
    return SingleChildScrollView(
      child: Container(
        height: height,
        color: Colors.transparent,
        width: width,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'contact(4).png',
              ),
            ),
          ),
          child: Glass(
            br: 0.0,
            opacity: 0.65,
            blur: 2.0,
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(width / 50),
              child: getWidget(),
            ),
          ),
        ),
      ),
    );
  }

  getWidget() {
    return MediaQuery.of(context).size.width < 621
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: getChildren())
        : Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: getChildren());
  }

  getUpperContainer(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width - 70;

    return Container(
      // color: Colors.yellow,
      height: width > 550 ? height :  height/2.5,
      width: width > 550 ? (width / 2) - 20 : width,
      padding: EdgeInsets.symmetric(
        vertical: height / 15,
        horizontal: width / 40,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Me",
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
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, width > 550 ? height / 5 : 0),
              // color: Colors.yellow,
              child: Neon(
                glowingDuration: const Duration(milliseconds: 1000),
                // glowing: true,
                text: "Let's Talk Ideas",
                color: Colors.blue,
                font: NeonFont.Monoton,
                flickeringText: true,
                flickeringLetters: const [4, 3],
                fontSize: width > 550 ? width / 23 : width / 15,
                blurRadius: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  getChildren() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width - 70;
    return [
      width < 621 ? Container(
        child: getUpperContainer(),
      ) : Expanded(
        child: getUpperContainer(),
      ),
      width > 621
          ? Container(
              width: 2,
              height: (3 * height) / 4,
              color: Colors.black,
            )
          : Container(
              height: 0,
              width: 0,
            ),
      Expanded(
        child: Container(
          // color: Colors.pink,
          child: Column(
            mainAxisAlignment: width > 621 ? MainAxisAlignment.center : MainAxisAlignment.start,
            children: [
              Container(
                    width: width > 621 ? width / 4 : width,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xcc332A7C),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children:  [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Color(0xff332A7C),
                            shape: BoxShape.circle,
                            boxShadow: [ //BoxShadow
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 2.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: width < 621 ? width/30 : 20,
                          ),
                        ),
                        Text(
                          "         +91 8383060387",
                          style: TextStyle(
                            fontSize: width < 621 ? width/25 : 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: height/20),
                width: width > 621 ? width / 4 : width,

                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xcc332A7C),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children:  [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Color(0xff332A7C),
                        shape: BoxShape.circle,
                        boxShadow: [ //BoxShadow
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Icon(
                        Icons.mail_outline,
                        size: width < 621 ? width/30 : 20,
                        color: Colors.white,
                      ),
                    ),
                     Text(
                      "         hatts2001@gmail.com",
                      style: TextStyle(
                        fontSize: width < 621 ? width/25 : 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width > 621 ? width / 4 : width,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xcc332A7C),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children:  [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Color(0xff332A7C),
                        shape: BoxShape.circle,
                        boxShadow: [ //BoxShadow
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Icon(
                        Icons.location_on_sharp,
                        color: Colors.white,
                        size: width < 621 ? width/30 : 20,
                      ),
                    ),
                    Text(
                      "         Noida, Uttar Pradesh",
                      style: TextStyle(
                        fontSize: width < 621 ? width/25 : 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
