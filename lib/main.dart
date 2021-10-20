import 'package:computiq_task_week0/pages/page_one.dart';
import 'package:computiq_task_week0/pages/page_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PageController _pageController;
  late var _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Computiq Task Week0'),
        ),
        body: PageView(
          controller: _pageController,
          children: [
            const PageOne(),
            const PageTwo(),
            Container(
              color: Colors.blueAccent,
              child: const Center(
                child: Text('Notifications'),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: const Center(
                child: Text('Profile'),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (pos) {
            setState(() {
              _currentPage = pos;
              _pageController.jumpToPage(pos);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts,
                color: _currentPage == 0 ? Colors.blue : Colors.grey,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: _currentPage == 1 ? Colors.blue : Colors.grey,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: _currentPage == 1 ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
              label: 'Recents',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: _currentPage == 2 ? Colors.blue : Colors.grey,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _currentPage == 3 ? Colors.blue : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
