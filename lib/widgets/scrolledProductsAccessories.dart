import 'package:flutter/material.dart';
import '../widgets/card_prod.dart';
import '../models/product.dart';
import 'package:sailor/sailor.dart';

class ScrolledProductsAccessories extends StatelessWidget {
  final String groupName;
  final List productList;

  ScrolledProductsAccessories({this.groupName, this.productList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              groupName,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (Product prod in productList)
                  CardProd(
                    prodId: prod.productId,
                    prodName: prod.productName,
                    prodImage: prod.productPhoto,
                    prodPrice: prod.productPrice,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
