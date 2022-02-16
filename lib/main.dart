import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:port_folio/screens/about.dart';
import 'package:port_folio/screens/contact.dart';
import 'package:port_folio/screens/home.dart';
import 'package:port_folio/screens/projects.dart';
import 'package:port_folio/screens/skills.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),//home
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

final itemController = ItemScrollController();

class _HomeState extends State<Home> {
  final itemListener = ItemPositionsListener.create();
  List<IconData> icon = [
    Feather.home,
    Icons.person_outline_rounded,
    Feather.book,
    Feather.monitor,
    Feather.mail,
  ];

  List<Widget> pages = [
    const HomePage(),
    const About(),
    const Skill(),
    const Project(),
    const Contact(),
  ];

  Widget getPages(int index) {
    return pages[index];
  }

  int value = 0;

  @override
  void initState() {
    super.initState();
    itemListener.itemPositions.addListener(() {
      final indices = itemListener.itemPositions.value
          .where((element) {
            final isMidCross = element.itemLeadingEdge <= 0.5;
            final isBaseCross = element.itemTrailingEdge >= 0.5;
            return isMidCross & isBaseCross;
          })
          .map((e) => e.index)
          .toList();
      int i = indices.isEmpty ? -1 : indices[0];
      if (value != i) {
        setState(() {
          value = i;
        });
        // print("im changing index to $value");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isFloatMin = true;
    return Scaffold(
      body: Container(
        color: Colors.grey[400],
        child: Row(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width < 500
                      ? MediaQuery.of(context).size.width / 10
                      : 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff332A7C),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: NavBar(selected: value),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width < 500
                  ? (MediaQuery.of(context).size.width) -
                      ((MediaQuery.of(context).size.width / 10) + 16)
                  : MediaQuery.of(context).size.width - 66,
              color: Colors.transparent,
              child: ScrollablePositionedList.builder(
                itemCount: 5,
                itemBuilder: (context, index) => getPages(index),
                itemScrollController: itemController,
                itemPositionsListener: itemListener,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff332A7C),
        mini: isFloatMin,
        onPressed: () {
          scrollToItem(0);
        },
        child: const Icon(
          Icons.keyboard_arrow_up_rounded,
        ),
      ),
    );
  }
}

int scrollChecker = -3;

class NavBar extends StatefulWidget {
  const NavBar({Key? key, required this.selected}) : super(key: key);

  final int selected;

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
      if (i >= 0) {
        selected[i] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selected != scrollChecker) {
      updateSelected(widget.selected);
    }

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
                    // pKey: arr[getIndex()],
                    isSelected: selected[getIndex()],
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
    required this.updateSelected,
    required this.index,
  }) : super(key: key);

  final IconData icon;
  final bool isSelected;
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
      width: MediaQuery.of(context).size.width < 500
          ? MediaQuery.of(context).size.width / 10
          : 50,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            height: 80.0,
            width: MediaQuery.of(context).size.width < 500
                ? MediaQuery.of(context).size.width / 7
                : 50,
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
                      ? MaterialStateProperty.all(Colors.grey[400])
                      : MaterialStateProperty.all(const Color(0xff332A7C)),
                  elevation: widget.isSelected
                      ? MaterialStateProperty.all(10)
                      : MaterialStateProperty.all(0),
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
                  scrollToItem(widget.index);
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

Future scrollToItem(int index) async {
  itemController.scrollTo(
    index: index,
    duration: const Duration(milliseconds: 300),
  );
}
