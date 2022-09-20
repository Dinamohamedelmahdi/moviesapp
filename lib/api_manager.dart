import 'dart:convert';
import 'package:flutter/material.dart' ;
import 'package:http/http.dart'as http ;
import 'package:movies/model/moviesresponse.dart';
import 'package:movies/model/popularresponse.dart';
class Api_manager {
  static const String url = 'api.themoviedb.org' ;
  static const String api_key = '674f0a511211bcd3192a15d26d8269ec' ;
  static Future<Moviesresponse> Getmovies() async{
    // https://api.themoviedb.org/3/movie/550?api_key=674f0a511211bcd3192a15d26d8269ec
    var uri = Uri.https( url,'/3/movie/550', {'apikey':api_key } ) ;
    var response = await http.get(uri) ;
    var json = jsonDecode(response.body);
    var moviesResponse = Moviesresponse.fromJson(json) ;
    return moviesResponse ;
  }
  static Future<Popularresponse> Getpopular() async
  {//https://api.themoviedb.org/3/movie/popular?api_key=674f0a511211bcd3192a15d26d8269ec&language=en-US&pages=1

    var uri = Uri.https(url, '/3/movie/popular',
        {'api_key':api_key,'language':'en-US'}) ;

    var response = await http.get(uri) ;
    var json = jsonDecode(response.body);
    var popularResponse = Popularresponse.fromJson(json) ;
    return popularResponse ;

  }
}
