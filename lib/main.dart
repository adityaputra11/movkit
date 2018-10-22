import 'package:flutter/material.dart';
import 'package:movkit/screens/movies.dart';
import 'package:movkit/screens/detail.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/': (context) => MovieScreen(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/detail': (context) => DetailScreen(),
    },
    theme: ThemeData.dark(),
  ));
}