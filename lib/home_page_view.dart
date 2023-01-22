import 'package:flutter/material.dart';

import 'package:screen_from_figma/navigation/main_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Map<String,String> list = {'One': Screens.fistScreen, 'Two':Screens.secondScreen, 'Three': Screens.thirdScreen};

    return Scaffold(
      appBar: AppBar(title: const Text('Выбор экрана',),),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: list.keys.first,
                items: list.keys.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(), onChanged: (String? value) {Navigator.pushNamed(context, list[value]!);},),
          ],
        ),
      ),
    );
  }
}

