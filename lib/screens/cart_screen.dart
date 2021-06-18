import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/button_blue.dart';
import '../main.dart';

class CartScreen extends StatelessWidget {
  int navId = 3;
  String _appBarTitle = 'Koszyk';
//  final Function goToSerachPage;
//  CartScreen(this.goToSerachPage);

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
      ),
      bottomNavigationBar: BottomNavBar(navId),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                  child: Image.asset('assets/images/graphics/xkom_cart.png')),
            ),
            Text(
              'Twój koszyk jest pusty',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: Text(
                'Szukasz inspiracji?',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: ButtonBlue(
                onPress: () {
                  Routes.sailor.navigate(
                    '/searchScreen',
                    navigationType: NavigationType.pushReplace,
                  );
                },
                buttonText: 'Wybierz produkty dla siebie',
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
