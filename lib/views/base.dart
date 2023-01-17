import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui_est/views/class.dart';
import 'package:ui_est/views/home.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int currentIndex = 2;

  List<Widget> tabs = [
    const Home(),
    const Class(),
    const Home(),
    const Home(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(FluentIcons.money_20_filled),
                icon: Icon(FluentIcons.money_20_regular),
                label: "Fees"),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentIcons.book_20_filled),
                icon: Icon(FluentIcons.book_20_regular),
                label: "Class"),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentIcons.grid_20_filled),
                icon: Icon(FluentIcons.grid_20_regular),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentIcons.people_20_filled),
                icon: Icon(FluentIcons.people_20_regular),
                label: "Staff"),
            BottomNavigationBarItem(
                activeIcon: Icon(FluentIcons.person_20_filled),
                icon: Icon(FluentIcons.person_20_regular),
                label: "Student")
          ]),
    );
  }
}
