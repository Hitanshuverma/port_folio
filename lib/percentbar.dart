import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Percentbar extends StatelessWidget {
  const Percentbar({Key? key, required this.color, required this.percentage})
      : super(key: key);
  final MaterialColor color;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      child: Container(
        width: MediaQuery.of(context).size.width > 800
            ? (MediaQuery.of(context).size.width - 70) / 4
            : (MediaQuery.of(context).size.width - 70) / 1.5,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
          BoxShadow(
            color: color.withAlpha(1000),
            blurRadius: 6.5,
            spreadRadius: 1.5,
            offset: Offset(
              0.5,
              0.0,
            ),
          ),
        ]),
        child: LinearPercentIndicator(
          width: MediaQuery.of(context).size.width > 800
              ? (MediaQuery.of(context).size.width - 70) / 4
              : (MediaQuery.of(context).size.width - 70) / 1.5,
          lineHeight: 10,
          percent: percentage / 100,
          animation: true,
          animationDuration: 2000,
          progressColor: color,
          backgroundColor: Colors.grey[800],
          barRadius: const Radius.circular(10),
        ),
      ),
    );
  }
}
