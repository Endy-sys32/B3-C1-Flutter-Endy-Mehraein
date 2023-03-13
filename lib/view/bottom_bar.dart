import 'dart:html';

import 'package:flutter/material.dart';
import 'package:location/view/share/badge_widget.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int indexSelected;
  const BottomNavBarWidget(this.indexSelected, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isUserNotConnected = true;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        currentIndex: indexSelected,

        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: isUserNotConnected
                ? const Icon(Icons.shopping_cart_outlined)
                : BadgeWidget(
              child : Icon(Icons.shopping_cart),
              value : 0,
              top : 0,
              right : 0,
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      onTap: (index) {
        String page = '/';
        switch (index){
          case 2 :
        }
      },
    );
  }
}
