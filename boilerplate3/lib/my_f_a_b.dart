import 'package:flutter/material.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          shape: Border.all(style: BorderStyle.none),
          backgroundColor: Colors.white,
          content: Padding(
            padding: const EdgeInsets.all(15.0),
            child: const Text('+ 버튼을 누르셨습니다.'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text(
                '확인',
                style: TextStyle(color: Color(0xff182949)),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff182949),
      shape: CircleBorder(side: BorderSide()),
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
