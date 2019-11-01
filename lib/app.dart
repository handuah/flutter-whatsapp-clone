import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/main_page.dart';
import 'package:whatsapp_ui_clone/screens/splash_screen.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        
      ),
      // home: MyHomePage(title: 'WhatsApp Clone'),
      onGenerateRoute: _pageRoutes(),
    );
  }
}

//Defined Routes
const SplashScreenRoute = '/';
const MainPageRoute = '/main_page';

//Routes Factory
RouteFactory _pageRoutes(){
  return(settings){
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
    switch(settings.name){
      case MainPageRoute:
        screen = MainPage();
        break;
      case SplashScreenRoute:
        screen = SplashScreen();
        break;
      default:
        return null;
    }
    return MaterialPageRoute(
      builder: (BuildContext context) => screen
    );
  };
}