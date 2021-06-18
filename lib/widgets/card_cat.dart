import 'package:flutter/material.dart';

class CardCat extends StatelessWidget {
  final String catName;
  final String catIcon;

  CardCat({@required this.catName, this.catIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 115,
      child: Card(
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage(catIcon)),
            SizedBox(height: 10),
            Text(
              catName,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
