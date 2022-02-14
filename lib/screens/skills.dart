import 'package:flutter/material.dart';

class Skill extends StatefulWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  _SkillState createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 70,
      color: Colors.brown,
      child: Text('skills'),
    );
  }
}
