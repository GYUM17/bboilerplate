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
          ],
        ),

        floatingActionButton: Container(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff182949),
            shape: CircleBorder(side: BorderSide()),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ),
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

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
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

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _Mydrawer();
}

class _Mydrawer extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xff182949)),
            child: Text(
              'SODA',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Color(0xff7B7A7A)),
            title: const Text(
              'Icon : favorite',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
        setState(() {
          light = value;
        });
      },
    );
  }
}

enum SingingCharacter { male, female }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.male;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Center(
              child: Row(
                children: [
                  Radio<SingingCharacter>(
                    activeColor: Color(0xff4B6EB1),
                    value: SingingCharacter.male,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Radio<SingingCharacter>(
                  activeColor: Color(0xff4B6EB1),
                  value: SingingCharacter.female,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
                Text(
                  'Female',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
