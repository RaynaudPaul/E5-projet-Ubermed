import 'dart:math';

import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

// Map permettant de mettre les routes à dispositon pour naviguer à travers le pages définits dans la navigationbar
class _NavBarState extends State<NavBar> {
  Map<String, MapEntry<IconData, String>> routes = {
    '/snack': const MapEntry(Icons.medical_services_outlined, 'Snack'),
    '/patients': const MapEntry(Icons.person, 'Patients'),
    '/catalogue': const MapEntry(Icons.shopping_cart, 'Catalogue'),
    '/sav': const MapEntry(Icons.browse_gallery_outlined, 'SAV')
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: BottomNavigationBar(
        elevation: 0,
        // faire correspondre l'index de la page actuelle avec l'index de la navigationbar
        currentIndex: max(
            routes.keys
                .toList()
                .indexOf(ModalRoute.of(context)!.settings.name!),
            0),
        onTap: (value) {
          Navigator.pushReplacementNamed(context, routes.keys.toList()[value]);
        },
        items: [
          // parcourir la map pour afficher les items de la navigationbar
          for (var routeValue in routes.values)
            BottomNavigationBarItem(
                icon: Icon(
                  routeValue.key,
                  color: Colors.black,
                ),
                label: routeValue.value),
        ],
      ),
    );
  }
}
