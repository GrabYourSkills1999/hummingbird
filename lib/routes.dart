import 'package:flutter/material.dart';
import 'package:news/screens/bottomnav.dart';





class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case '/' :
      //   return MaterialPageRoute(
      //       builder: (_)=> SplashScreen()
      //   );
      // case '/Landingpage' :
      //   return MaterialPageRoute(
      //       builder: (_)=> Landingpage()
      //   );
      case '/' :
        return MaterialPageRoute(
            builder: (_)=> BottomBar()
        ) ;
      // case '/LoginPage' :
      //   return MaterialPageRoute(
      //       builder: (_)=> LoginPage()
      //   ) ;
      // case '/SignUpPage' :
      //   return MaterialPageRoute(
      //       builder: (_)=> SignUpPage()
      //   ) ;

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}