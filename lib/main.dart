import 'package:flutter/material.dart';

import 'package:peliculas/src/pages/home_page.dart';
import 'package:peliculas/src/pages/pelicula_detalle.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Películas',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => HomePge(),
        'detalle' : (BuildContext context) => PeliculaDetalle(),
      },
    );
  }
}


// https://api.themoviedb.org/3/movie/now_playing?api_key=fdb537af1f29d87eca96d4202c6dadc5&language=es-ES&page=1