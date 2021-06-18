import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sailor/sailor.dart';
import '../main.dart';

class BottomNavBar extends StatelessWidget {
  final int navId;
  Color c0, c1, c2, c3, c4;

  BottomNavBar(this.navId);

  @override
  Widget build(BuildContext context) {
    if (navId == 0) {
      c0 = Colors.blue;
    } else
      c0 = Colors.grey;

    if (navId == 1) {
      c1 = Colors.blue;
    } else
      c1 = Colors.grey;

    if (navId == 2) {
      c2 = Colors.blue;
    } else
      c2 = Colors.grey;

    if (navId == 3) {
      c3 = Colors.blue;
    } else
      c3 = Colors.grey;

    if (navId == 4) {
      c4 = Colors.blue;
    } else
      c4 = Colors.grey;

    return Container(
      height: 70,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(FontAwesomeIcons.home),
            color: c0,
            onPressed: () {
              Routes.sailor.navigate(
                '/homeScreen',
                params: {
                  'navId': 0,
                },
                navigationType: NavigationType.pushReplace,
              );
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            color: c1,
            onPressed: () {
              Routes.sailor.navigate(
                '/searchScreen',
                navigationType: NavigationType.pushReplace,
              );
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.eye),
            color: c2,
            onPressed: () {
              Routes.sailor.navigate(
                '/watchScreen',
                navigationType: NavigationType.pushReplace,
              );
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.shoppingCart),
            color: c3,
            onPressed: () {
              Routes.sailor.navigate(
                '/cartScreen',
                navigationType: NavigationType.pushReplace,
              );
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.user),
            color: c4,
            onPressed: () {
              Routes.sailor.navigate(
                '/accountScreen',
                navigationType: NavigationType.pushReplace,
              );
            },
          ),
        ],
      ),
    );
  }
}
