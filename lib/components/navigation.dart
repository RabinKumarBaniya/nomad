import 'package:flutter/material.dart';
import 'package:ghumante/components/drawer.dart';
import 'package:ghumante/screens/explore_scree.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghumante/screens/home_screen.dart';
import 'package:ghumante/screens/message_scree.dart';
import 'package:ghumante/screens/profile._screen.dart';




class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
   int _selectedIndex = 0;
   static final List<Widget> _widgetOptions = <Widget>[
     Home(),
     Explore(),
     Message(),
     Profile(),
   ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const NavigationDrawerWidget(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.home),
           label: '',
          ),
          BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.compass),
           label: '',
          ),
           BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.facebookMessenger),
           label: '',
          ),
           BottomNavigationBarItem(
           icon: FaIcon(FontAwesomeIcons.peopleArrows),
           label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.red,
        elevation: 0.0,
        iconSize: 30.0,


      ),
    );
  }
}