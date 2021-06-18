import 'package:flutter/material.dart';

class SeeAllLink extends StatelessWidget {
  final String txt;
  SeeAllLink(this.txt);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      child: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    txt,
                    style: TextStyle(fontSize: 15, fontFamily: 'Calibri'),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
