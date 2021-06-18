import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

class Search extends StatelessWidget {
  final Color bgColor;

  Search({@required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 15,
          left: 10,
          right: 10,
          top: 10,
        ),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(3.0),
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: null,
              ),
              suffixIcon: IconButton(
                icon: Icon(Boxicons.bx_barcode),
                onPressed: null,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              hintText: 'Czego szukasz?',
            ),
          ),
        ),
      ),
    );
  }
}
