import 'package:flutter/material.dart';
import '../widgets/see_all_link.dart';
import '../widgets/small_grey_line.dart';
import '../const.dart';
import '../widgets/card_prod.dart';
import '../models/product.dart';
import '../main.dart';
import 'package:sailor/sailor.dart';

class ScrolledProducts extends StatelessWidget {
  final String groupName;
  final List productList;

  ScrolledProducts({this.groupName, this.productList});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              groupName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
          SmallGreyLine.customWidth(paddingTop: 5, paddingBottom: 5),
          GestureDetector(
            child: SeeAllLink('Zobacz wszystkie'),
            onTap: () {
              Routes.sailor.navigate(
                '/searchScreen',
                navigationType: NavigationType.pushReplace,
              );
            },
          ),
        ],
      ),
    );
  }
}
