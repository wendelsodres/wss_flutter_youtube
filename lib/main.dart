import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:wss_youtube/api.dart';
import 'package:wss_youtube/blocs/favorite_bloc.dart';
import 'package:wss_youtube/blocs/videos_bloc.dart';
import './screens/home.dart';

void main() {
  Api api = Api();
  api.search('mc wendinho');
  runApp(MyYoutube());
}

class MyYoutube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: BlocProvider(
        bloc: FavoriteBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Wss Youtube',
          home: Home(),
        ),
      ),
    );
  }
}
