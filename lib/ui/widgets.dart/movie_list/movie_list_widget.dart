// ignore_for_file: unused_import, non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

//import 'package:spider/spider.dart';
class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
        id: 1,
        imageName: 'images/600x900.webp',
        title: 'Смертельная битва ',
        time: 'April 7, 2021',
        description:
            'Боец смешанных единоборств Коул Янг не раз соглашался проиграть за деньги.'),
    Movie(
        id: 2,
        imageName: 'images/600x900.webp',
        title: 'Spider man ',
        time: 'April 7, 2021',
        description:
            'Боец смешанных единоборств Коул Янг не раз соглашался проиграть за деньги.'),
    Movie(
        id: 3,
        imageName: 'images/600x900.webp',
        title: 'прибытие ',
        time: 'April 7, 2021',
        description:
            'Боец смешанных единоборств Коул Янг не раз соглашался проиграть за деньги.'),
    Movie(
        id: 4,
        imageName: 'images/600x900.webp',
        title: 'Назад в будующее  ',
        time: 'April 7, 2021',
        description:
            'Боец смешанных единоборств Коул Янг не раз соглашался проиграть за деньги.'),
    Movie(
        id: 5,
        imageName: 'images/600x900.webp',
        title: 'Черный краб ',
        time: 'April 7, 2021',
        description:
            'Боец смешанных единоборств Коул Янг не раз соглашался проиграть за деньги.'),
  ];
  var _filteredMovies = <Movie>[];
  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTab(int index) {
    final id = _movies[index].id;
    Navigator.of(context)
        .pushNamed('/main_screen/movie_details', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemExtent: 163,
          itemCount: _filteredMovies.length,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage(movie.imageName),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                movie.title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                movie.time,
                                style: TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                movie.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => _onMovieTab(index),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
