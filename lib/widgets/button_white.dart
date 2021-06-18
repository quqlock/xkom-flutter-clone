import 'package:flutter/material.dart';
import '../const.dart';

class ButtonWhite extends StatelessWidget {
  final String buttonText;
  final Function onPress;

  ButtonWhite({this.buttonText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 12, bottom: 12),
      onPressed: () {
        onPress();
      },
      color: kButtonWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: kButtonWhiteTextColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            buttonText,
            style: TextStyle(color: kButtonWhiteTextColor, fontSize: 17),
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
