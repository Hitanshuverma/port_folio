import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:port_folio/screens/about.dart';
import 'package:port_folio/screens/contact.dart';
import 'package:port_folio/screens/home.dart';
import 'package:port_folio/screens/projects.dart';
import 'package:port_folio/screens/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  // const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final homekey = GlobalKey();
final aboutkey = GlobalKey();
final skillkey = GlobalKey();
final projectkey = GlobalKey();
final conckey = GlobalKey();

List<GlobalKey<State<StatefulWidget>>> arr = <GlobalKey>[
  homekey,
  aboutkey,
  skillkey,
  projectkey,
  conckey,
];

class _HomeState extends State<Home> {
  List<IconData> icon = [
    Feather.home,
    Icons.person_outline_rounded,
    Feather.book,
    Feather.monitor,
    Feather.mail,
  ];

  @override
  Widget build(BuildContext context) {
    bool isFloatMin = true;

    return Scaffold(
      body: Container(
        color: Colors.grey[350],
        child: Row(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: MediaQuery.of(context).size.height,
                  // width: 50,
                  width: MediaQuery.of(context).size.width < 500
                      ? MediaQuery.of(context).size.width / 10
                      : 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff332A7C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const NavBar(),
                ),
              ],
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width - 70,
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HomePage(key: homekey),
                    About(key: aboutkey),
                    Skill(key: skillkey),
                    Project(key: projectkey),
                    Contact(key: conckey),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff332A7C),
        mini: isFloatMin,
        onPressed: () {
          scrollToItem(homekey);
        },
        child: const Icon(
          Icons.keyboard_arrow_up_rounded,
        ),
      ),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<IconData> icon = [
    Feather.home,
    Icons.person_outline_rounded,
    Feather.book,
    Feather.monitor,
    Feather.mail,
  ];

  List<bool> selected = [
    true,
    false,
    false,
    false,
    false,
  ];

  void updateSelected(int i) {
    setState(() {
      selected.setAll(0, [false, false, false, false, false]);
      selected[i] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    int index = -1;
    int getIndex() {
      index++;
      return index;
    }

    return Stack(
      children: [
        Positioned(
          top: 110,
          child: Column(
            children: icon
                .map(
                  (e) => NavbarItem(
                    icon: e,
                    pKey: arr[getIndex()],
                    isSelected: selected[index],
                    updateSelected: updateSelected,
                    index: index,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class NavbarItem extends StatefulWidget {
  const NavbarItem({
    Key? key,
    required this.icon,
    required this.isSelected,
    required this.pKey,
    required this.updateSelected,
    required this.index,
  }) : super(key: key);

  final IconData icon;
  final bool isSelected;
  final GlobalKey pKey;
  final Function updateSelected;
  final int index;

  @override
  _NavbarItemState createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width < 500 ? MediaQuery.of(context).size.width/10 : 50,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            height: 80.0,
            width: MediaQuery.of(context).size.width < 500 ? MediaQuery.of(context).size.width/7 : 50,
            child: Center(
              child: ElevatedButton(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(widget.isSelected ? 14 : boxSize()),
                  child: FittedBox(
                    child: Icon(
                      widget.icon,
                      color: widget.isSelected ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: widget.isSelected
                      ? MaterialStateProperty.all(Colors.grey[350])
                      : MaterialStateProperty.all(const Color(0xff332A7C)),
                  elevation: MaterialStateProperty.all(0),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  shape: MaterialStateProperty.all(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                  ),
                  minimumSize:
                      MaterialStateProperty.all(const Size(60.0, 60.0)),
                ),
                onHover: (isTrue) {
                  setState(() {
                    isHover = isTrue;
                  });
                },
                onPressed: () {
                  scrollToItem(widget.pKey);
                  widget.updateSelected(widget.index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  boxSize() {
    return isHover ? 15 : 10;
  }
}

Future scrollToItem(GlobalKey itemkey) async {
  final context = itemkey.currentContext!;
  await Scrollable.ensureVisible(
    context,
    duration: const Duration(milliseconds: 400),
  );
}
