import 'package:flutter/material.dart';
import 'package:flutter_cubit/screens/nav_folder.dart/bar_item.dart';
import 'package:flutter_cubit/screens/nav_folder.dart/dashboard.dart';
import 'package:flutter_cubit/screens/nav_folder.dart/profile.dart';
import 'package:flutter_cubit/screens/nav_folder.dart/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List page = [
    DashBoard(),
    BarItem(),
    SearchPage(),
    Profile(),
  ];
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentindex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        elevation: 0,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp),
            label: "Bar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
