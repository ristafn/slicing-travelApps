import 'package:flutter/material.dart';
import 'package:slicing_travel_apps/views/explore_page.dart';
import 'package:slicing_travel_apps/views/favorite_place.dart';

import '../views/home_page.dart';

class NavbarProvider with ChangeNotifier {
  static int _selectedIndex = 0;

  static const List<Widget> pageOptions = <Widget>[
    HomePage(),
    ExplorePage(),
    FavoritePage(),
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
