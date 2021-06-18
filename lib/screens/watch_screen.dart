import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/button_blue.dart';
import '../widgets/bottom_nav_bar.dart';
import '../main.dart';

class WatchScreen extends StatelessWidget {
  int navId = 2;
//  final Function goToLoginPage;
//  WatchScreen(this.goToLoginPage);

  @override
  Widget build(BuildContext context) {
    String _appBarTitle = 'Obserwowane';
    Widget _actionIcon = IconButton(
      icon: Icon(
        //Boxicons.bxs_bell_ring,
        FontAwesomeIcons.balanceScaleRight,
      ),
      onPressed: null,
    );

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                  child: Image.asset('assets/images/graphics/xkom_staff.png')),
            ),
            Text(
              'Lista obserwowanych jest pusta',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 200,
                child: Text(
                  'Zaloguj się, aby obserwować produkty',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 180,
              child: ButtonBlue(
                onPress: () {
                  Routes.sailor.navigate(
                    '/accountScreen',
                    navigationType: NavigationType.pushReplace,
                  );
                },
                buttonText: 'Zaloguj się',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height - 40);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
