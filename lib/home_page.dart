import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './widgets/drawer_x.dart';
import './screens/product_screen.dart';
import './screens/home_screen.dart';
import './screens/watch_screen.dart';
import './screens/cart_screen.dart';
import './screens/account_screen.dart';
import './screens/search_screen.dart';
import 'functions.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  String _appBarTitle;
  Widget _actionIcon = IconButton(
    icon: Icon(
      //Boxicons.bxs_bell_ring,
      FontAwesomeIcons.bell,
    ),
    onPressed: null,
  );
  Color _appBarColor = Colors.white;

  void goToLoginPage() {
    setState(() {
      _currentIndex = 4;
      onTabTapped(_currentIndex);
    });
  }

  void goToSubCategoryPage() {
    setState(() {
      _currentIndex = 5;
      onTabTapped(_currentIndex);
    });
  }

  void goToSerachPage() {
    setState(() {
      _currentIndex = 1;
      onTabTapped(_currentIndex);
    });
  }

  void goToProductPage() {
    setState(() {
      onTabTapped(5);
    });
  }

  Widget body() {
    switch (_currentIndex) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return SearchScreen();
        break;
      case 2:
        return WatchScreen();
        break;
      case 3:
        return CartScreen();
        break;
      case 4:
        return AccountScreen();
        break;
      case 5:
        return ProductScreen();
        break;
    }
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;

      switch (index) {
        case 0:
          {
            _appBarTitle = checkTimeMessage();
            _appBarColor = Colors.white;
            _actionIcon = IconButton(
              icon: Icon(
                Boxicons.bx_bell,
              ),
              onPressed: null,
            );
          }
          break;
        case 1:
          {
            _appBarTitle = 'Wszystkie kategorie';
            _appBarColor = Colors.grey[300];
            _actionIcon = IconButton(
              icon: Icon(
                Boxicons.bx_poll,
              ),
              onPressed: null,
            );
          }
          break;
        case 2:
          {
            _appBarTitle = 'Obserwowane';
            _appBarColor = Colors.grey[300];
            _actionIcon = IconButton(
              icon: Icon(
                Boxicons.bx_poll,
              ),
              onPressed: null,
            );
          }
          break;
        case 3:
          {
            _appBarTitle = 'Koszyk';
            _appBarColor = Colors.grey[300];
            _actionIcon = Container(
              width: 0,
              height: 0,
            );
          }
          break;
        case 4:
          {
            _appBarTitle = 'Logowanie';
            _actionIcon = IconButton(
              icon: Icon(
                Boxicons.bx_info_circle,
              ),
              onPressed: null,
            );
            _appBarColor = Colors.grey[300];
          }
          break;
      }
    });
  }

  @override
  void initState() {
    _appBarTitle = checkTimeMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _appBarColor,
        elevation: 0,
        title: Text(
          _appBarTitle,
          style: TextStyle(fontFamily: 'Calibri'),
        ),
        actions: <Widget>[
          _actionIcon,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.search,
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.eye,
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.shoppingCart,
            ),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
            ),
            title: Text('Account'),
          ),
        ],
      ),
      drawer: DrawerX(),
      body: body(),
      //body: _children[_currentIndex],
    );
  }
}
