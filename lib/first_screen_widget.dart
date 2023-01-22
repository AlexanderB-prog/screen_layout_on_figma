import 'package:flutter/material.dart';

class FirstScreenWidget extends StatelessWidget {
  const FirstScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010035),
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: MediaQuery.of(context).size.width * 0.326,
              top: MediaQuery.of(context).size.height / 2 - 66,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6E4E),
                  borderRadius: BorderRadius.circular(132),
                ),
                height: 132,
                width: 132,
              ),
            ),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.408,
                top: MediaQuery.of(context).size.height * 0.462,
                child: const SizedBox(
                  width: 290,
                  child: Text(
                    'Ecommerce Concept',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 27.5,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Mark Pro',
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
