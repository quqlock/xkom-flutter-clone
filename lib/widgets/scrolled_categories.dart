import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import './card_cat.dart';
import './see_all_link.dart';
import './small_grey_line.dart';
import '../const.dart';
import '../models/category.dart';
import '../main.dart';

class CategoriesCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for (Category cat in categories)
                  GestureDetector(
                    onTap: () {
                      Routes.sailor.navigate(
                        '/categoryScreen',
                        navigationType: NavigationType.pushReplace,
                        params: {
                          'catId': cat.categoryId,
                          'mainCategoryName': cat.categoryName,
                        },
                      );
                    },
                    child: CardCat(
                      catName: cat.categoryName,
                      catIcon: cat.categoryIcon,
                    ),
                  ),
              ],
            ),
          ),
          SmallGreyLine(),
          GestureDetector(
            child: SeeAllLink('Wszystkie kategorie'),
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
