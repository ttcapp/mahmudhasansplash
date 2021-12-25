import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/my_home_page.dart';
import 'package:splash/second_page.dart';

import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),
    );
  }
}
