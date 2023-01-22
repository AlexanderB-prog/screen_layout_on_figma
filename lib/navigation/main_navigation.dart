import 'package:flutter/material.dart';
import 'package:screen_from_figma/home_page_view.dart';
import 'package:screen_from_figma/first_screen_widget.dart';
import 'package:screen_from_figma/second_screen_widget.dart';
import 'package:screen_from_figma/third_screen_widget.dart';

abstract class Screens {
  static const main = '/';
  static const fistScreen = '/fistScreen ';
  static const secondScreen = '/secondScreen';
  static const thirdScreen = '/thirdScreen';
}

class MainNavigation {
  Map<String, WidgetBuilder> get routes => {
        Screens.main: (context) => const HomePage(),
        Screens.fistScreen: (context) => const FirstScreenWidget(),
        Screens.secondScreen: (context) => const SecondScreenWidget(),
        Screens.thirdScreen: (context) => const ThirdScreenWidget(),
      };
}
