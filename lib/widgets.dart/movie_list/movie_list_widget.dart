// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:spider/spider.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 163,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.red,
        );
      },
    );
  }
}
