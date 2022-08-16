import 'package:flutter/material.dart';
import 'package:house/widget/home_screen_Icon.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeScreenIcon(),
      Container(
        child: Center(child: Text("search")),
      ),
      Container(
        child: Center(child: Text("liked")),
      ),
      Container(
        child: Center(child: Text("profile")),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            pages[_currentIndex],
            bottomBar(),
          ],
        ),
      ),
    );
  }

  Padding bottomBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedFontSize: 0,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            iconSize: 35,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "",
                backgroundColor: Colors.black,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "",
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}




