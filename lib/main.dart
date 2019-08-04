import 'package:flutter/material.dart';
import 'cars.dart';
import 'carData.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent a Whoosh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Rent a Whoosh'),
    );
  }
}





class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {


    AppBar appBar1 = AppBar(
      elevation: 12,
      backgroundColor: Colors.lightBlueAccent,
      actions: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.80,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text('LOGIN', style: TextStyle(color: Colors.white),),
            onPressed: () {},
          ),
        )
      ],
      title: Text(widget.title),
    );
    var auti = CarModels().listOfCars();
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child:
                Align(alignment: Alignment.bottomLeft,child: Text('Rent a Car - Flutter and Json')),

              ),
            ),
            ListTile(

              leading: Icon(Icons.category),
              title: Text('Categories'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: appBar1,
      body: Container(child:Stack(children: <Widget>[

        TextField(decoration: InputDecoration(
          labelText: "Search",
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)))),),

        Padding(
          padding: const EdgeInsets.only(top:60.0),
          child: ListView.builder(
            shrinkWrap: true,
          itemBuilder: (context, index) {

          return CarWidget(car: auti[index],);
          },
          itemCount: auti.length,
      ),
        ),
     ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Search',
        child: Icon(Icons.search),
      ),
    );
  }
}
