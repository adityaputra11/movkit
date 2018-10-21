import 'package:flutter/material.dart';
import 'package:movkit/screens/series.dart';
import 'package:movkit/screens/movies.dart';


class Routes {
  Routes(){
    runApp(new MaterialApp(
      title: "Kit",
      initialRoute: '/',
      routes:{
        "/":(context) => MovieApp(),
        "/series":(context) => SeriesScreen(),
      },
    ));
  }
}