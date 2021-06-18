import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './see_all_link.dart';
import '../const.dart';

class VideoAdv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text(
              'Filmy x-kom',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          GestureDetector(
              onTap: () {
                launch('https://www.youtube.com/watch?v=mmyhcwyPfXg');
              },
              child: Image.asset('assets/images/banners/video_banner.jpg')),
          SeeAllLink('Zobacz wszystkie'),
        ],
      ),
    );
  }
}
