import 'package:flutter/material.dart';
import './see_all_link.dart';
import './small_grey_line.dart';
import '../models/ad_banner.dart';

class Banners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 15),
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: <Widget>[
                  for (AdBanner ban in bannersList)
                    Image.asset(
                      ban.bannerPhoto,
                      width: 350.0,
                      height: 175.0,
                    )
                ],
              ),
            ),
          ),
          SmallGreyLine(),
          SeeAllLink('Wszystkie promocje'),
        ],
      ),
    );
  }
}
