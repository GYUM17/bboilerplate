import 'package:flutter/material.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white, body: MyPageView()),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> with TickerProviderStateMixin {
  int _currentPageIndex = 0;
  late PageController pageController;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: _handlePageViewChanged,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 267, left: 68),
                    child: Image.asset('assets/sodaicon 1.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 573, left: 63),
                    child: (Text(
                      'Copyright 2023 SODA. All rights reserved.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(0, 0, 0, 0.6),
                        letterSpacing: 0.1,
                      ),
                    )),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 54, right: 60),
                child: Center(child: Image.asset('assets/soda 1.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 103, right: 103),
                child: Center(child: Image.asset('assets/soda 2.png')),
              ),
            ],
          ),
          TabPageSelector(
            controller: tabController,
            borderStyle: BorderStyle.none,
            color: Color(0xffD8D8D8),
            selectedColor: Color(0xff182949),
            indicatorSize: 6,
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }
}
