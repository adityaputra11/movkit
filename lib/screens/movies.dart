import 'package:flutter/material.dart';


void main()=>runApp(MovieScreen());


class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Aditya Putra Pratama"),
              new Text("UX/UI Developer"),
              new Text("adityaputrapratama39@gmail.com"),
              new Text("github.com/adityaputra11")
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.green
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('KIT'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new RaisedButton(
            child: Text('Movie screen'),
            onPressed: () {
            // Navigate to the second screen using a named route
            Navigator.pushNamed(context, '/detail');
          },
        ),
         ],
       ),
      ),
    );
  }
}

