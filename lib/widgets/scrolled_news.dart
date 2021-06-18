import 'package:flutter/material.dart';
import 'package:clean_swiper/clean_swiper.dart';
import '../widgets/see_all_link.dart';
import '../widgets/small_grey_line.dart';
import '../const.dart';
import '../widgets/card_news.dart';
import '../models/article.dart';

class ScrolledNews extends StatefulWidget {
  final String newsName;

  ScrolledNews({this.newsName});

  @override
  _ScrolledNewsState createState() => _ScrolledNewsState();
}

class _ScrolledNewsState extends State<ScrolledNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      width: double.infinity,
      height: 365,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              widget.newsName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            height: 250,
            child: CleanSwiper(
              viewportFraction: 1.0,
              children: <Widget>[
                for (Article a in articles)
                  CardNews(
                    newsTitle: a.articleTitle,
                    newsShort: a.articleText,
                    newsImage: a.articlePhoto,
                  )
              ],
            ),
          ),
          SmallGreyLine(),
          SeeAllLink('Zobacz wszystkie'),
        ],
      ),
    );
  }
}
