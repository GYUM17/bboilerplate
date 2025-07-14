import 'package:boilerplate4/sub.dart';
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
        appBar: MyAppBar(),
        drawer: Mydrawer2(),
        body: MyBody(),
        floatingActionButton: MyFloatingAct(),
        bottomNavigationBar: MyBottomNav(),
      ),
    );
  }

  AppBar MyAppBar() {
    return AppBar(
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
    );
  }
}
