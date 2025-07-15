import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageViewController,
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
          PageIndicator(
            tabController: _tabController,
            currentPageIndex: _currentPageIndex,
            onUpdateCurrentPageIndex: _updateCurrentPageIndex,
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      controller: tabController,
      color: Color(0xffD8D8D8),
      selectedColor: Color(0xff182949),
      borderStyle: BorderStyle.none,
    );
  }
}
