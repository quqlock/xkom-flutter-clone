import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const.dart';

class ButtonBlue extends StatelessWidget {
  final String buttonText;
  final Function onPress;

  ButtonBlue({this.buttonText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 12, bottom: 12),
      onPressed: () {
        onPress();
      },
      color: kButtonBlueColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            buttonText,
            style: TextStyle(color: kButtonBlueTextColor, fontSize: 17),
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
