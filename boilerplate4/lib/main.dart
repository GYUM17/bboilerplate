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
          leading: Builder(
            builder: (context) {
              return Mydrawer();
            },
          ),
          centerTitle: false,
          title: Text(
            'SODA',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                letterSpacing: 0.15,
              ),
            ),
          ),

          backgroundColor: Color(0xff182949),
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
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 35),
              child: Text(
                'DAY 8',
                style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
              child: Card.outlined(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 8,
                          bottom: 6,
                        ),
                        child: Text(
                          'BoilerPlate4',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            letterSpacing: 0.15,
                            color: Color.fromRGBO(0, 0, 0, 0.87),
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          '어느덧 SODA 캠프 8일차가 되었네요!\n여기까지 달려오시느라 수고 많으셨어요 :\n\n아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!',
                          style: GoogleFonts.roboto(
                            color: Color.fromRGBO(0, 0, 0, 0.6),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'CANCEL',
                              style: GoogleFonts.roboto(
                                color: Color(0xff4B6EB1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'SUBMIT',
                              style: GoogleFonts.roboto(
                                color: Color(0xff4B6EB1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 1.25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Tooltip(
          message: 'Tooltip',
          preferBelow: false,
          showDuration: Duration(seconds: 3),
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
                  child: Text('Copyright 2023 SODA. All rights reserved.'),
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
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(Icons.menu, color: Colors.white),
    );
  }
}
