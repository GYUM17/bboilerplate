//import 'package:boilerplate3/main.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.zero,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.zero,
        ),
        hint: Text(
          'Name',
          style: TextStyle(fontWeight: FontWeight.w400, letterSpacing: 0.15),
        ),
        filled: true,
        fillColor: Color.fromRGBO(33, 33, 33, 0.08),
      ),
    );
  }
}
