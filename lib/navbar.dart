import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slicing_travel_apps/constraints.dart';

import 'providers/navbar_provider.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NavbarProvider>(
      create: (context) => NavbarProvider(),
      child: Consumer<NavbarProvider>(builder: (context, nav, _) {
        return Scaffold(
          body: NavbarProvider.pageOptions.elementAt(nav.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: NavbarProvider.ItemsOptions,
            currentIndex: nav.selectedIndex,
            onTap: (index) {
              nav.selectedIndex = index;
            },
            selectedItemColor: Constraints.amber,
            unselectedItemColor: Colors.amber[100],
          ),
        );
      }),
    );
  }
}
