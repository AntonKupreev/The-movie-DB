// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:themoviedb/widgets.dart/movie_details/movie_detail_main_info_widget.dart';
import 'package:themoviedb/widgets.dart/movie_details/movie_detail_main_screen_cast_info_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final int movieId;
  const MovieDetailsWidget({
    Key? key,
    required this.movieId,
  }) : super(key: key);

  @override
  State<MovieDetailsWidget> createState() => _MovieDetailsWidgetState();
}

class _MovieDetailsWidgetState extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tom Clancy's Without Remorse "),
      ),
      body: ColoredBox(
        color: Colors.black,
        child: ListView(
          children: [
            MovieDetailsMainInfoWidget(),
            SizedBox(
              height: 15,
            ),
            MovieDetailMainScreenCastInfoWidget(),
          ],
        ),
      ),
    );
  }
}
