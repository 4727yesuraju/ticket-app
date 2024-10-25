import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {

  final appScreens = [
    const HomeScreen(),
    const Center(child : Text("Search")),
    const Center(child : Text("Tickets")),
    const Center(child : Text("Profile")),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index){ // _ means private
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : appScreens[_selectedIndex],

        bottomNavigationBar : BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap : _onItemTapped,
          selectedItemColor : Colors.blueGrey,
          unselectedItemColor : const Color(0xff526400),
          showSelectedLabels: false,

          items:  const [
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon : Icon(FluentSystemIcons.ic_fluent_home_filled),
                label : "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon : Icon(FluentSystemIcons.ic_fluent_search_filled),
                label : "Search"
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon : Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label : "Ticket"
              ),
              BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon : Icon(FluentSystemIcons.ic_fluent_person_filled),
                label : "Profile"
              ),
        ],)
    );
  }
}