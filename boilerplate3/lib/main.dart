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
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
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
