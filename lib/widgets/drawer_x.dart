import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import '../functions.dart';

class DrawerX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 85,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: DrawerHeader(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Image.asset('assets/images/icons/xkom_ico.png'),
                  trailing: Icon(Icons.navigate_next),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              checkTimeMessage(),
                              style: TextStyle(fontStyle: FontStyle.italic),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Zaloguj się lub załóż konto',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Icon(Boxicons.bx_home),
                title: Text('Strona główna'),
              ),
            ),
            ListTile(
              leading: Icon(Boxicons.bxs_grid),
              title: Text('Kategorie produktów'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_shopping_bag),
              title: Text('Promocje'),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Boxicons.bx_shopping_bag),
              title: Text('Mój koszyk'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_clipboard),
              title: Text('Moje zamówienia'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_shopping_bag),
              title: Text('Obserwowane'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_bell),
              title: Text('Historia powiadomień'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_wrench),
              title: Text('Moje ustawienia'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_package),
              title: Text('Reklamacje i zwroty'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Boxicons.bx_user),
              title: Text('O nas'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_help_circle),
              title: Text('Centrum pomocy'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_envelope),
              title: Text('Skontaktuj się z nami'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Boxicons.bx_right_arrow),
              title: Text('Zaproś przyjaciół'),
            ),
            ListTile(
              leading: Icon(Boxicons.bx_happy),
              title: Text('Oceń aplikację'),
            ),
            Center(
              child: Text(
                'Wersja 0.1.1',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
