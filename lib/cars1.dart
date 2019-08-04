
import 'package:flutter/material.dart';

class CarWidget extends StatefulWidget {
  final Car car;
  const CarWidget({Key key, this.car}) : super(key: key);

  @override
  _CarWidgetState createState() => _CarWidgetState();
}

class Car {

  String naslov;
  String detalji;
  IconData icon;

  String lokacijaSlike;

  Car(this.naslov, this.detalji, this.icon, this.lokacijaSlike);

}

class _CarWidgetState extends State<CarWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: BeveledRectangleBorder(
//          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(width: 1, color: Colors.deepPurpleAccent),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(widget.car.icon, size: 15,),
                  Text(
                    widget.car.naslov,
                    style: TextStyle(fontSize: 15),
                  ),
                  FlatButton(
                    onPressed: (){
//                      CalendarModel().izbrisiTask(task);
                    },
                    child: Icon(Icons.clear, size: 30, color: Colors.red,)
                    ,
                  )
                ],
              ),
            ),
            Image.network(
              widget.car.lokacijaSlike,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(widget.car.detalji, softWrap: true,
                    style: TextStyle(fontSize: 16)),

                ],
              ),
            ),

//            Padding(
//              padding: const EdgeInsets.only(left: 28.0, bottom: 5),
//              child: Container(
//                decoration: new BoxDecoration(
//                    borderRadius: BorderRadius.circular(30.0),
//                    color: Colors.grey,
//                    border: new Border.all(
//                      width: 1.0,
//                      color: Colors.black,)
//
//
//                ),
//
//
//              ),
//            ),

          ],
        ),
      ),
    );
  }

}