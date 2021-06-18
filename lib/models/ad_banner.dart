import 'package:flutter/material.dart';

class AdBanner {
  final String bannerPhoto;

  const AdBanner({@required this.bannerPhoto});
}

const List<AdBanner> bannersList = [
  AdBanner(bannerPhoto: 'assets/images/banners/x1.jpg'),
  AdBanner(bannerPhoto: 'assets/images/banners/x2.jpg'),
  AdBanner(bannerPhoto: 'assets/images/banners/x3.jpg'),
  AdBanner(bannerPhoto: 'assets/images/banners/x4.jpg'),
];
