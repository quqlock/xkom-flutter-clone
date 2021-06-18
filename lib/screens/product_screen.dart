import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xkom/widgets/scrolledProductsAccessories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/bottom_nav_bar.dart';
import '../models/product.dart';

class ProductScreen extends StatefulWidget {
  final int prodId;

  ProductScreen({this.prodId});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _current = 0;

  //image list
  final List<String> imgList = [
    'assets/images/products/product_big.png',
    'assets/images/products/apple.jpg',
    'assets/images/products/laptop.jpg',
    'assets/images/products/laptop2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          FontAwesomeIcons.cartPlus,
          size: 20,
        ),
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.balanceScaleRight),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.eye),
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.arrowCircleRight,
            ),
            onPressed: null,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(0),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                  options: CarouselOptions(
                    height: 275.0,
                    viewportFraction: 1.0,
                  ),
                  items: imgList.map((item) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Image.asset(item, fit: BoxFit.fitHeight),
                      );
                    });
                  }).toList()),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Column(
                    children: [
                      Container(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'HP',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '1500,00 zł',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '1200,00 zł',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Pełna nazwa produktu',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Boxicons.bxs_star,
                            color: Colors.grey,
                            size: 17,
                          ),
                          Icon(
                            Boxicons.bxs_star,
                            color: Colors.grey,
                            size: 17,
                          ),
                          Icon(
                            Boxicons.bxs_star,
                            color: Colors.grey,
                            size: 17,
                          ),
                          Icon(
                            Boxicons.bxs_star,
                            color: Colors.grey,
                            size: 17,
                          ),
                          Icon(
                            Boxicons.bxs_star_half_1,
                            color: Colors.grey,
                            size: 17,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '(12)',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          children: [
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    FontAwesomeIcons.clock,
                                    color: Colors.grey,
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kup teraz - zamówienie otrzymasz już jutro',
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Zapłać w ciagu:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text(
                                            '5 godzin 34 minut',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    FontAwesomeIcons.calendar,
                                    color: Colors.grey,
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Rata tylko: ',
                                          ),
                                          Text(
                                            '27,20 zł',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Oblicz ratę',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    FontAwesomeIcons.truck,
                                    color: Colors.grey,
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Salon 0,00 zł | Kurier 20,00 zł',
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Sprawdź informacje o dostawie',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    FontAwesomeIcons.mapMarkerAlt,
                                    color: Colors.grey,
                                  ),
                                ),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Dostępność w salonach',
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Sprawdź dostępność w salonach',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'skorzystaj z rat w kwadrans',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Text(
                                  'i ciesz się wybranym sprzętem',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Specyfikacja',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla magna diam, tempus sed nulla quis, luctus luctus dolor. Integer non ultrices lacus. In ac sapien nec ante efficitur egestas. In ullamcorper in metus id ullamcorper.  ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Opis',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla magna diam, tempus sed nulla quis, luctus luctus dolor. Integer non ultrices lacus. In ac sapien nec ante efficitur egestas. In ullamcorper in metus id ullamcorper.  ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Opinie 6.0',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidStar,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidStar,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidStar,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidStar,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidStar,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                    ),
                                    Text(
                                      '5 opinii',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla magna diam, tempus sed nulla quis, luctus luctus dolor. Integer non ultrices lacus. In ac sapien nec ante efficitur egestas. In ullamcorper in metus id ullamcorper.  ',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      ScrolledProductsAccessories(
                        groupName: 'Rekomendowane akcesoria',
                        productList: productsBestsellers,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Ścieżka kategorii',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'x-kom > Wszystkie kategprie > Urządzenia > Laptop',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
