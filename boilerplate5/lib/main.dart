import 'package:flutter/material.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 68,
                right: 68,
                top: 267,
                bottom: 307,
              ),
              child: Center(child: Image.asset('assets/sodaicon 1.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 54, right: 60),
              child: Center(child: Image.asset('assets/soda 1.png')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 379,
                vertical: 103,
              ),
              child: Center(child: Image.asset('assets/soda 2.png')),
            ),
          ],
        ),
      ),
    );
  }
}
