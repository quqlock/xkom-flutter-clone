import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../const.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class DailyHotShotProduct extends StatefulWidget {
  final String productName;
  final double priceOld;
  final double priceNew;

  DailyHotShotProduct(
      {@required this.productName,
      @required this.priceOld,
      @required this.priceNew});

  @override
  _DailyHotShotProductState createState() => _DailyHotShotProductState();
}

class _DailyHotShotProductState extends State<DailyHotShotProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Colors.transparent,
                width: 400,
                height: 330,
              ),
              Positioned(
                top: 40,
                child: Container(
                  child: Image.asset(
                      'assets/images/products/hot_shot_product.jpg'),
                ),
              ),
              Positioned(
                left: 15,
                top: 13,
                child: Container(
                  color: Colors.white,
                  height: 30,
                  width: 140,
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Gorący',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Text(
                        ' strzał',
                        style: TextStyle(
                          fontSize: 23,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 6,
                child: Text(
                  'Śpiesz się, oferta kończy się za:',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Positioned(
                right: 0,
                top: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 60,
                  width: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '08',
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Calibri',
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'godzin',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '10',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'minut',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.white,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '33',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'sekund',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text(widget.productName)],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.priceOld.toStringAsFixed(2) + ' zł',
                    style: TextStyle(
                        fontSize: 15, decoration: TextDecoration.lineThrough),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(widget.priceNew.toStringAsFixed(2) + ' zł',
                      style: TextStyle(fontSize: 20, color: Colors.pink))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LinearPercentIndicator(
                    width: 350,
                    animation: true,
                    lineHeight: 30.0,
                    animationDuration: 2000,
                    percent: 0.69,
                    center: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Pozostało: 70',
                            style: TextStyle(color: Colors.white)),
                        Text('Sprzedano: 30',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.grey[800],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
