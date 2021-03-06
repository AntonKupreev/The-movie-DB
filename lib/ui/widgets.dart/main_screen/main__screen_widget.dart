// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:themoviedb/ui/widgets.dart/movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _SelectedTab = 0;

  void onSelectTab(int index) {
    if (_SelectedTab == index) return;
    setState(() {
      _SelectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
      ),
      body: IndexedStack(
        index: _SelectedTab,
        children: [
          Text('Новости'),
          MovieListWidget(),
          Text('Фильмы'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedTab,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: 'Новости'),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Фильмы'),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Сериалы'),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
