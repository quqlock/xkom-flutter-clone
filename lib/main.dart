import 'package:flutter/material.dart';
import 'package:flutter_xkom/screens/category_screen.dart';
import 'package:sailor/sailor.dart';
import './screens/account_screen.dart';
import './screens/cart_screen.dart';
import './screens/watch_screen.dart';
import './screens/home_screen.dart';
import './screens/search_screen.dart';
import './screens/product_screen.dart';

void main() {
  Routes.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Calibri',
        primaryColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.yellow,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: HomeScreen(),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
      navigatorObservers: [
        SailorLoggingObserver(),
        Routes.sailor.navigationStackObserver,
      ],
    );
  }
}

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoutes(
      [
        SailorRoute(
            name: '/homeScreen',
            defaultTransitions: [
              SailorTransition.fade_in,
            ],
            defaultTransitionDuration: Duration(microseconds: 1),
            builder: (context, args, params) {
              return HomeScreen(
                navId: params.param('navId'),
              );
            },
            params: [
              SailorParam<int>(name: 'navId', isRequired: true),
            ]),
        SailorRoute(
          name: '/searchScreen',
          defaultTransitions: [
            SailorTransition.fade_in,
          ],
          defaultTransitionDuration: Duration(microseconds: 1),
          builder: (context, args, params) {
            return SearchScreen();
          },
        ),
        SailorRoute(
          name: '/watchScreen',
          defaultTransitions: [
            SailorTransition.fade_in,
          ],
          defaultTransitionDuration: Duration(microseconds: 1),
          builder: (context, args, params) {
            return WatchScreen();
          },
        ),
        SailorRoute(
          name: '/cartScreen',
          defaultTransitions: [
            SailorTransition.fade_in,
          ],
          defaultTransitionDuration: Duration(microseconds: 1),
          builder: (context, args, params) {
            return CartScreen();
          },
        ),
        SailorRoute(
          name: '/accountScreen',
          defaultTransitions: [
            SailorTransition.fade_in,
          ],
          defaultTransitionDuration: Duration(microseconds: 1),
          builder: (context, args, params) {
            return AccountScreen();
          },
        ),
        SailorRoute(
            name: '/productScreen',
            defaultTransitions: [
              SailorTransition.fade_in,
            ],
            defaultTransitionDuration: Duration(microseconds: 1),
            builder: (context, args, params) {
              return ProductScreen(
                prodId: params.param('prodId'),
              );
            },
            params: [
              SailorParam<int>(name: 'prodId', isRequired: true),
            ]),
        SailorRoute(
            name: '/categoryScreen',
            defaultTransitions: [
              SailorTransition.fade_in,
            ],
            defaultTransitionDuration: Duration(microseconds: 1),
            builder: (context, args, params) {
              return SubCategoryScreen(
                catId: params.param('catId'),
                mainCategoryName: params.param('mainCategoryName'),
              );
            },
            params: [
              SailorParam<int>(name: 'catId', isRequired: true),
              SailorParam<String>(name: 'mainCategoryName', isRequired: true),
            ])
      ],
    );
  }
}
