import 'package:flutter/material.dart';
import 'package:magic_cube/estructure.dart';
import 'package:magic_cube/pages/magic_cube.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String name = 'Magic Cube';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: name,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: Magic_Cube(),
      );
}