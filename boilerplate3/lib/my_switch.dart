//import 'package:boilerplate3/main.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitch();
}

class _MySwitch extends State<MySwitch> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      inactiveTrackColor: Color(0xff979797),
      activeTrackColor: Color(0xff4B6EB1),
      value: light,
      inactiveThumbColor: Colors.white,
      activeColor: Colors.white,

      onChanged: (bool value) {
        if (value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration:
                  Durations.extralong1 +
                  Durations.extralong1 +
                  Durations.extralong1,
              content: const Text('switch를 ON 하였습니다.'),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {
                  // Code to execute.
                },
              ),
            ),
          );
        }
        setState(() {
          light = value;
        });
      },
    );
  }
}
