import 'package:flutter/material.dart';

import '../views/home_page.dart';

class NavbarProvider with ChangeNotifier {
  static int _selectedIndex = 0;

  static const List<Widget> pageOptions = <Widget>[
    HomePage(),
    Center(child: Text('Jelajah')),
    Center(child: Text('Favorit')),
    Center(child: Text('Profil')),
  ];

  static const List<BottomNavigationBarItem> ItemsOptions =
      <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
    BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Jelajah'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorit'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil')
  ];

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  int get selectedIndex => _selectedIndex;
}
