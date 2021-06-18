import 'package:flutter/material.dart';

class Article {
  final String articleTitle;
  final String articleText;
  final String articlePhoto;

  const Article(
      {@required this.articleTitle,
      @required this.articleText,
      @required this.articlePhoto});
}

const List<Article> articles = <Article>[
  Article(
    articleTitle: 'Promocja banknotowa w x-kom. Ceny niższe nawet o 61%',
    articleText:
        'Pierwszy dzień czerwca wita słoneczną pogodą i niezwykłymi promocjami. Właśnie trwa Smar...',
    articlePhoto: 'assets/images/products/apple.jpg',
  ),
  Article(
    articleTitle: 'Dzien Ojca - sprawdź nasze propozycje na prezent!',
    articleText:
        'Pierwszy dzień czerwca wita słoneczną pogodą i niezwykłymi promocjami. Właśnie trwa Smar...',
    articlePhoto: 'assets/images/products/apple.jpg',
  ),
  Article(
    articleTitle: 'Nowe MacBooki już w X-Kom! Sprawdź ceny!',
    articleText:
        'Pierwszy dzień czerwca wita słoneczną pogodą i niezwykłymi nowościami Apple!. Właśnie dotarły do nas nowe Macbooki, sprawdź konfiuracje i ceny!',
    articlePhoto: 'assets/images/products/apple.jpg',
  ),
];
