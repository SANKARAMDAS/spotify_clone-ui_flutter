import 'package:flutter/material.dart';

import '../views/home.dart';
import '../views/library.dart';
import '../views/profile.dart';
import '../views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState((){
            this._selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.library_music),label: "Your Library"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: Stack(
        children: [
          renderView(0, HomeView(),),
          renderView(1, Search(),),
          renderView(2, Library(),),
          renderView(3, Profile(),),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
          ignoring: _selectedTab != tabIndex,
          child: Opacity(opacity: _selectedTab == tabIndex ? 1 : 0,
          child: view,)
        );
  }
}
