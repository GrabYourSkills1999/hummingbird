import 'package:flutter/material.dart';

import 'package:news/screens/bottomnav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: BottomBar(),
    );
  }
}

