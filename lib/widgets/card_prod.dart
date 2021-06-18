import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import '../main.dart';

class CardProd extends StatelessWidget {
  final String prodName;
  final double prodPrice;
  final String prodImage;
  final int prodId;

  CardProd({
    @required this.prodName,
    @required this.prodPrice,
    @required this.prodImage,
    @required this.prodId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Routes.sailor.navigate(
          '/productScreen',
          params: {
            'prodId': prodId,
          },
        );
      },
      child: Container(
        height: 160,
        width: 150,
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(prodImage),
              SizedBox(height: 10),
              Text(prodName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              Text(
                prodPrice.toStringAsFixed(2) + ' zł',
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
