import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/product.dart';
import '../widgets/search.dart';
import '../widgets/scrolled_banners.dart';
import '../widgets/scrolled_products.dart';
import '../widgets/daily_hot_shot_product.dart';
import '../widgets/scrolled_news.dart';
import '../widgets/scrolled_categories.dart';
import '../widgets/break_grey.dart';
import '../widgets/video_adv.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  final int navId;

  HomeScreen({this.navId});

  //final Function goToSerachPage;
  //HomeScreen(this.goToSerachPage);

  String _appBarTitle = 'Dzień dobry';
  Widget _actionIcon = IconButton(
    icon: Icon(
      //Boxicons.bxs_bell_ring,
      FontAwesomeIcons.bell,
    ),
    onPressed: null,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ToDo ten appbar trzeba zmienić na container i wrzucić do body żeby się scrolował
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          _appBarTitle,
          style: TextStyle(fontFamily: 'Calibri', fontSize: 25),
        ),
        actions: <Widget>[
          _actionIcon,
        ],
      ),
      bottomNavigationBar: BottomNavBar(navId),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Search(
                bgColor: Colors.white,
              ),
              Banners(),
              BreakGrey(),
              CategoriesCards(),
              BreakGrey(),
              DailyHotShotProduct(
                productName: 'Xblitz Trust + X600 Light + G155',
                priceOld: 439.00,
                priceNew: 269.00,
                piecesLeft: 30,
                piecesSold: 70,
              ),
              BreakGrey(),
              ScrolledProducts(
                groupName: 'Polecamy',
                productList: productsRecomended,
              ),
              BreakGrey(),
              VideoAdv(),
              BreakGrey(),
              ScrolledProducts(
                groupName: 'Hity tygodnia',
                productList: productsHits,
              ),
              BreakGrey(),
              ScrolledNews(
                newsName: 'Aktualności',
              ),
              BreakGrey(),
              ScrolledProducts(
                groupName: 'Bestsellery',
                productList: productsBestsellers,
              ),
              BreakGrey(),
              ScrolledNews(
                newsName: 'Poradniki',
              ),
              BreakGrey(),
              ScrolledProducts(
                groupName: 'Ostatnio oglądane',
                //toDo last viewed products to adds to list
                productList: productsLastViewed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
