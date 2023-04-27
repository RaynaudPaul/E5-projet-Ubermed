import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget widget;

//classe qui permet de créer une animation de défilement de gauche à droite
  CustomPageRoute({required this.widget})
      : super(
          transitionDuration: Duration(milliseconds: 200),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation =
                CurvedAnimation(parent: animation, curve: Curves.easeInOut);
            //animation de défilement de gauche à droite
            return SlideTransition(
              position: Tween(
                begin: Offset(1.0, 0.0),
                end: Offset(0.0, 0.0),
              ).animate(animation),
              child: child,
            );
          },
          //page de destination
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          },
        );
}
