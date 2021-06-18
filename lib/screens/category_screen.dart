import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import '../models/subcategory.dart';
import '../widgets/search.dart';
import '../widgets/bottom_nav_bar.dart';

class SubCategoryScreen extends StatelessWidget {
  final String mainCategoryName;
  final int navId = 1;
  final int catId;
  SubCategoryScreen({this.catId, this.mainCategoryName});

  @override
  Widget build(BuildContext context) {
    //get the data
//    Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
//    final subCategoryName = args['subCategoryName'];
//    final subCategoryId = args['subCategoryId'];
//    return Scaffold(
//      body: Container(
//        child: Text(subCategoryName),
//      ),
//    );

    String _appBarTitle = mainCategoryName;
    Widget _actionIcon = IconButton(
      icon: Icon(
        Boxicons.bx_poll,
      ),
      onPressed: null,
    );

    List<SubCategory> _FilteredSubCategories =
        subCategories.where((pozycja) => pozycja.categoryId == catId).toList();

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
              for (SubCategory subCat in _FilteredSubCategories)
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black26),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      leading: Image.asset(subCat.subCategoryIcon),
                      title: Text(subCat.subCategoryName),
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
