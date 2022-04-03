import 'package:flutter/material.dart';
import 'package:magic_cube/pages/magic_cube.dart';

class Estructure extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Estructure();
  }
}

class _Estructure extends State<Estructure> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Magic_Cube()],
    );
  }
}
