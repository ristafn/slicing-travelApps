import 'package:flutter/material.dart';

import '../views/home_page.dart';
import '../views/page2.dart';

class NavbarProvider with ChangeNotifier {
  static int _selectedIndex = 0;

  static const List<Widget> pageOptions = <Widget>[
    HomePage(),
    Page2(),
  ];

  static const List<BottomNavigationBarItem> ItemsOptions =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')
  ];

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  int get selectedIndex => _selectedIndex;
}
