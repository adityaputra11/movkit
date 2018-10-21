import 'package:flutter/material.dart';


void main() => runApp(new MovieApp());

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MoviePage(title: 'Kit'),
    );
  }
}

class MoviePage extends StatefulWidget {
  MoviePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MoviePageState createState() => new _MoviePageState();
}
class _MoviePageState extends State<MoviePage> {
  //final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget drawerSection =  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Text("Aditya Putra pratama"),
          new Text("UX/UI Designer"),
          new Text("adityaputrapratama39@gmail.com"),
          new Text("https://github.com/adityaputra11")
        ],
      ),
  );
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            drawerSection
          ],
        ),
        ),
      body: new Center(
        child:new RaisedButton(onPressed: (){Navigator.pushNamed(context, "/series");}, child: const Text("Series")),
      ),
      );

  }
}
