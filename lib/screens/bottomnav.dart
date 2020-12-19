import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double sizeboxheight = 25;

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  PageController _pageController = PageController();
  List<Widget> _screens = [Home(), Category(), Search(), Profile()];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemtapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
    Color(0xfffbb448);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Color(0xFF000000),
          currentIndex: _selectedIndex,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: Fontfamily,
            letterSpacing: 1,
          ),
          onTap: _onItemtapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF000000),
              icon: Icon(
                FontAwesomeIcons.circle,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.folder,
              ),
              label: "Category",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_identity,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
