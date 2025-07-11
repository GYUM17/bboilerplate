import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Boilerplate(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Boilerplate extends StatefulWidget {
  const Boilerplate({super.key});

  @override
  State<Boilerplate> createState() => _BoilerplateState();
}

class _BoilerplateState extends State<Boilerplate> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Card1
          Card(
            color: Colors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)),
            ),
            margin: EdgeInsets.all(11),
            child: ListTile(
              leading: Icon(Icons.airplay_outlined, color: Color(0xff979797)),
              title: Text(
                'This is ListTile',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.87),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              subtitle: Text(
                'List Tile 1',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff979797),
                    fontSize: 14,
                    letterSpacing: 0.25,
                  ),
                ),
              ),
            ),
          ),
          //Card2
          Card(
            color: Colors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)),
            ),
            //margin: EdgeInsets.only(top: 14, right: 13, bottom: 12, left: 16),
            margin: EdgeInsets.only(left: 11, right: 11, bottom: 11),
            child: ListTile(
              leading: Icon(Icons.airplay_outlined, color: Color(0xff979797)),
              title: Text(
                'This is ListTile',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.87),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              subtitle: Text(
                'List Tile 2',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff979797),
                    fontSize: 14,
                    letterSpacing: 0.25,
                  ),
                ),
              ),
            ),
          ),
          //Card3
          Card(
            color: Colors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.1)),
            ),
            margin: EdgeInsets.only(left: 11, right: 11, bottom: 11),
            child: ListTile(
              leading: Icon(Icons.airplay_outlined, color: Color(0xff979797)),
              title: Text(
                'This is ListTile',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.87),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 0.15,
                  ),
                ),
              ),
              subtitle: Text(
                'List Tile 3',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff979797),
                    fontSize: 14,
                    letterSpacing: 0.25,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            //color: Colors.black,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Text Button',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Color(0xff182949),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.25,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(17, 0, 0, 20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Ink(
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Color(0xff182949),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.settings, color: Colors.white),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xffFFE8E8),
                      ),
                      side: WidgetStatePropertyAll(BorderSide.none),
                    ),
                    child: Text(
                      'Outline Button',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Color(0xff182949)),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(thickness: 2, color: Colors.black, indent: 13, endIndent: 14),

          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text('Copyright 2022 SODA All rights reserved.'),
            ),
          ),
        ],
      ),

      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 35),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff182949),
          shape: CircleBorder(side: BorderSide()),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
