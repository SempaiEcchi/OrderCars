import 'package:flutter/material.dart';
import 'package:ordercars/detailsScreen.dart';

import 'hexcolor.dart';

Widget _buildButton(BuildContext context) {
  return ButtonTheme(
    height: 100,
    minWidth: 100,
    child: OutlineButton(
      onPressed: () {},
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
      child: Text('CUSTOM BUTTON'),
    ),
  );
}

class CarWidget extends StatefulWidget {
  final Car car;

  const CarWidget({Key key, this.car}) : super(key: key);

  @override
  _CarWidgetState createState() => _CarWidgetState();
}

class Car {
  String carName;
  String lore;
  String imgSrc;
  String AC;
  int doors;
  String transmission;

  Car(this.carName, this.lore, this.imgSrc, this.AC, this.doors,
      this.transmission);
}

class _CarWidgetState extends State<CarWidget> {
  bool _dropdownShown = false;
  bool pressedDetails = false;
  bool pressedExtras = false;
  bool pressedFeatures = false;
  var colorPurple = HexColor('#303F9F');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 5,

              ),
            ]),
            child: Card(
              elevation: 5,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.car.carName,
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  Container(
                      child: Image.network(
                    widget.car.imgSrc,
                    fit: BoxFit.cover,
                    height: 300,
                  )),

//                  Text(widget.car.lore, style: TextStyle(fontSize: 18),)

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 1, bottom: 1),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.5)),
                        child: Text(
                          'DETAILS',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        elevation: 5,
                        color: colorPurple,
                        onPressed: () {
                          setState(() {
                            pressedDetails = !pressedDetails;
                          });
                        },
                      ),
                    ),
                  ),

                  Visibility(
                    visible: pressedDetails,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 10,
                        ),
                        Expanded(
                            child: FlatButton(

                                color: Colors.white,
                                onPressed: () {},
                                child: Text(
                                  'FEATURES',
                                ),
                                shape: Border(
                                    bottom: BorderSide(
                                  color: colorPurple,
                                  width: 4,
                                )))),
                        Container(
                          width: 8,
                        ),
                        Expanded(
                            child: FlatButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'EXTRAS',
                          ),
                          shape: Border(
                              bottom: BorderSide(color: colorPurple, width: 4)),
                        )),
                        Container(
                          width: 10,
                        ),
//                      FlatButton(onPressed: () {}, child: Text('EXTRAS', ),shape: Border(bottom: BorderSide(color: Colors.blueAccent,width: 2)),),
                      ],
                    ),
                  ),
//                Padding(
//                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
//                  child: SizedBox(
//                    width: double.maxFinite,
//                    child: RaisedButton(
//                      color: Colors.white,
//                        onPressed: () {},
//                        shape: Border(
//                            bottom:
//                                BorderSide(color: Colors.blueAccent, width: 2.0)),
//                        child: null),
//                  ),
//                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
