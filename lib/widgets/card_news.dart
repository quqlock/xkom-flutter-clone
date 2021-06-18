import 'package:flutter/material.dart';
import './small_grey_line.dart';

class CardNews extends StatelessWidget {
  final String newsTitle;
  final String newsImage;
  final String newsShort;

  CardNews(
      {@required this.newsTitle,
      @required this.newsImage,
      @required this.newsShort});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    child: Image.asset(newsImage),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(maxWidth: 175),
                    child: Text(
                      newsTitle,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SmallGreyLine.customWidth(
                    lineWidth: 100,
                    paddingBottom: 20,
                    paddingTop: 3,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 175),
                    child: Text(
                      newsShort,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                      maxLines: 4,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
