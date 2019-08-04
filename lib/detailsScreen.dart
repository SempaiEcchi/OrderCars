import 'package:flutter/material.dart';
import 'package:ordercars/cars.dart';

class DetailsScreen extends StatelessWidget {
  final String body;
  DetailsScreen(this.body);

  @override
  Widget build(BuildContext context){
    return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(child: Text('FEATURES')),
            RaisedButton(child: Text('EXTRAS')),
          ],

        );


  }
}