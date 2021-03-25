import 'package:flutter/material.dart';
import 'package:news/routes.dart';
//f35e96e8440643358ffc688de1f15a39


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(elevation: 0.0, color: Colors.black12),

      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

