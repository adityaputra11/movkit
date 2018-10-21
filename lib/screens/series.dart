import 'package:flutter/material.dart';

void main()=>runApp(SeriesScreen());

class SeriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(

    );
  }
}
class SeriesPage extends StatefulWidget{
  SeriesPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SeriesState createState() => new _SeriesState();
 
}
class _SeriesState extends State<SeriesPage>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(),
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.settings),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),

      ),

    );
  }
}