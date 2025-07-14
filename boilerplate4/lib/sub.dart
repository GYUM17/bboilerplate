import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mydrawer2 extends StatelessWidget {
  const Mydrawer2({super.key});

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

class MyFloatingAct extends StatelessWidget {
  const MyFloatingAct({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Tooltip',
      preferBelow: false,
      showDuration: Duration(seconds: 2),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff182949),
        shape: CircleBorder(side: BorderSide()),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Divider(thickness: 2, color: Colors.black, indent: 13, endIndent: 14),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Text('Copyright 2023 SODA. All rights reserved.'),
            ),
          ),
        ],
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int? _value = 0;
  List<String> chips = ["SODA", "CAMP", "FUN", "FLUTTER"];
  @override
  Widget build(BuildContext context) {
    return Column(
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

        Padding(
          padding: const EdgeInsets.only(left: 19, top: 5),
          child: Wrap(
            spacing: 10.0,
            children: List<Widget>.generate(chips.length, (int index) {
              return Theme(
                data: ThemeData(useMaterial3: false),
                child: ChoiceChip(
                  backgroundColor: Color.fromRGBO(33, 33, 33, 0.08),
                  labelStyle: TextStyle(
                    color: _value == index
                        ? Colors.white
                        : Color.fromRGBO(0, 0, 0, 0.87), // Text color
                  ),
                  selectedColor: Color(0xff182949),
                  label: Text(
                    chips[index],
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.25,
                    ),
                  ),
                  selected: _value == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _value = selected ? index : null;
                    });
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ],
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
