// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: _MovieNameWidget(),
        ),
        _ScoreWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
          child: _SummeryWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _DesccriptionWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        _PeopleWidgets(),
      ],
    );
  }

  Text _OverviewWidget() {
    return Text(
      'Overview',
      style: TextStyle(color: Colors.white),
    );
  }
}

class _DesccriptionWidget extends StatelessWidget {
  const _DesccriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'vsdflbmsfsmblsfdmbklsfbmsfklbnsfklbmflbsmfdbksfngbksfgbnsflgngkngkfgkngknkfgndgkmdglnmdgklnmdgknmgkndmgnkdgmndkgnmfg',
      style: TextStyle(color: Colors.white),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 400,
          height: 150,
          child: Placeholder(),
        ),
        Container(
          width: 150,
          height: 150,
          child: Placeholder(),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 3,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Tom Clancy's Without Remorse ",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23),
          ),
          TextSpan(
            text: "(2021) ",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
          ),
        ],
      ),
    );
  }
}

class _ScoreWidget extends StatelessWidget {
  const _ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('User Score'),
            ],
          ),
        ),
        Container(
          color: Colors.grey,
          width: 1,
          height: 15,
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.play_arrow),
              Text('Play Trailer'),
            ],
          ),
        ),
      ],
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Text(
        'R 04/29/2021 (US) 1h49m Action, AQdventure, Thriller, War',
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class _PeopleWidgets extends StatelessWidget {
  const _PeopleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
    final jobTilteStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Stefano Solima',
                style: nameStyle,
              ),
              Text(
                'director',
                style: jobTilteStyle,
              ),
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Stefano Solima',
                style: nameStyle,
              ),
              Text(
                'director',
                style: jobTilteStyle,
              ),
            ])
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Stefano Solima',
                style: nameStyle,
              ),
              Text(
                'director',
                style: jobTilteStyle,
              ),
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Stefano Solima',
                style: nameStyle,
              ),
              Text(
                'director',
                style: jobTilteStyle,
              ),
            ])
          ],
        )
      ],
    );
  }
}
