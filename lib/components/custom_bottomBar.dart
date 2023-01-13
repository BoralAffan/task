import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomBottomNav extends StatefulWidget {
  CustomBottomNav({Key? key}) : super(key: key);

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: UtilColors().primaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),

          BottomNavigationBarItem(icon: Icon(Icons.bookmark_add), label: 'search'),

          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'search'),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'account',
          ),
        ]);
  }
}
