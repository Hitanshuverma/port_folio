import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Hscroll extends StatefulWidget {
  const Hscroll({Key? key, required this.getIndex}) : super(key: key);

  final Function getIndex;
  @override
  _HscrollState createState() => _HscrollState();
}

class _HscrollState extends State<Hscroll> {
  List<int> data = [1, 2, 3, 4];

  Widget _buildItemList(BuildContext context, int index) {
    if (index == data.length) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    List<String> imgData = [
      'event.jpg',
      'maharana.png',
      'mst.png',
      'dice.png'
    ];
     return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // color: Colors.yellow,
            width: MediaQuery.of(context).size.width > 550 ? 200 : 150,
            height: MediaQuery.of(context).size.width > 550
                ? 250
                : MediaQuery.of(context).size.height / 3.5,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage(imgData[index]),
                // fit: BoxFit.none
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          children: [
            MediaQuery.of(context).size.width > 550
                ? Expanded(child: getContainer())
                : Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    child: getContainer(),
                  ),
          ],
        ),
    );
  }

  getContainer() {
    return Container(
      // color: Colors.black,
      child: ScrollSnapList(
        itemBuilder: _buildItemList,
        itemSize: MediaQuery.of(context).size.width > 550 ? 200 : 150,
        dynamicItemSize: true,
        onReachEnd: () {
          print('Done!');
        },
        itemCount: data.length,
        onItemFocus: (int) {
          // print(int);
          widget.getIndex(int);
        },
      ),
    );
  }
}
