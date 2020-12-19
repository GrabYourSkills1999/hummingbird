import 'package:flutter/material.dart';
import 'package:news/routes.dart';



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
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

