import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/button_blue.dart';
import '../widgets/button_white.dart';
import '../const.dart';

class AccountScreen extends StatelessWidget {
  int navId = 4;
  String _appBarTitle = 'Logowanie';
  Widget _actionIcon = IconButton(
    icon: Icon(
      Boxicons.bx_info_circle,
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
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(left: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: 'Adres e-mail',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(left: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: 'Hasło',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 8.0, top: 8.0, bottom: 8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nie pamiętasz hasła?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    child: ButtonBlue(
                      buttonText: 'Zaloguj się',
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWhite(
                    onPress: null,
                    buttonText: 'Zarejestruj się',
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 5.0, bottom: 12.0),
                    child: Text(
                      'Dlaczego warto mieć konto?',
                      style: TextStyle(
                        color: kButtonBlueColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
