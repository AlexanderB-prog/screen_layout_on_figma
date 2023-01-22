import 'package:flutter/material.dart';
import 'package:screen_from_figma/navigation/main_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(

       // bottomAppBarColor: Colors.green,
          appBarTheme: AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
           // color: Colors.red,
          ),

      ),

      initialRoute: Screens.main,
      routes: mainNavigation.routes,
    );
  }
}


