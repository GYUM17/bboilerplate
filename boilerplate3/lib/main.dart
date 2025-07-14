import 'package:boilerplate3/my_date_picker.dart';
import 'package:boilerplate3/my_f_a_b.dart';
import 'package:boilerplate3/my_switch.dart';
import 'package:boilerplate3/my_text_button.dart';
import 'package:boilerplate3/my_textfield.dart';
import 'package:boilerplate3/mydrawer.dart';
import 'package:boilerplate3/radio_example.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff182949),
          title: const Text(
            'SODA',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            Theme(data: ThemeData(useMaterial3: false), child: MySwitch()),
          ],
        ),
        drawer: Mydrawer(),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.all(20.0), child: MyTextfield()),
            RadioExample(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20),
              child: ListTile(
                title: Text(
                  '버튼을 눌러 날짜를 선택해주세요.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: 1.25,
                  ),
                ),
                trailing: MyTextButton(),
              ),
            ),
          ],
        ),

        floatingActionButton: MyFAB(),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(
                thickness: 2,
                color: Colors.black,
                indent: 13,
                endIndent: 14,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: Text('Copyright 2022 SODA All rights reserved.'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
