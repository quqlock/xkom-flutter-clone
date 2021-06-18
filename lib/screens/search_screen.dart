import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import '../widgets/search.dart';
import '../models/category.dart';
import '../main.dart';
import '../widgets/bottom_nav_bar.dart';

class SearchScreen extends StatelessWidget {
  int navId = 1;

//  final Function goToSubCategoryPage;
//  SearchScreen(this.goToSubCategoryPage);
  String _appBarTitle = 'Wszystkie kategorie';
  Widget _actionIcon = IconButton(
    icon: Icon(
      Boxicons.bx_poll,
    ),
    onPressed: null,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ToDo ten appbar trzeba zmienić na container i wrzucić do body żeby się scrolował
        backgroundColor: Colors.grey[300],
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
                bgColor: Colors.grey[300],
              ),
              for (Category cat in categories)
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black26),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Routes.sailor.navigate(
                        '/categoryScreen',
                        //navigationType: NavigationType.pushReplace,
                        params: {
                          'catId': cat.categoryId,
                          'mainCategoryName': cat.categoryName,
                        },
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(cat.categoryIcon),
                      title: Text(cat.categoryName),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
