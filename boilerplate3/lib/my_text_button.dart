//import 'package:boilerplate3/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextButton extends StatefulWidget {
  const MyTextButton({super.key});

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2025, 7, 12),
      firstDate: DateTime(2001),
      lastDate: DateTime(2030),
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.12)),
        backgroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.only(bottom: 6, top: 6, left: 10, right: 10),
      ),
      onPressed: _selectDate,
      child: Text(
        'SELECT DATE',
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Color(0xff4B6EB1)),
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: 1.25,
        ),
      ),
    );
  }
}
