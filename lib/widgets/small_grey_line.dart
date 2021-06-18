import 'package:flutter/material.dart';

class SmallGreyLine extends StatelessWidget {
  double lineWidth = 380.0;
  double lineHeight = 0.5;
  double paddingTop = 20;
  double paddingBottom = 0;

  SmallGreyLine({lineWidth, lineHeight});

  SmallGreyLine.customWidth(
      {this.lineWidth, this.paddingTop, this.paddingBottom}) {
    lineWidth = this.lineWidth;
    paddingBottom = this.paddingBottom;
    paddingTop = this.paddingTop;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: Container(
        height: lineHeight,
        width: lineWidth,
        color: Colors.grey,
      ),
    );
  }
}
