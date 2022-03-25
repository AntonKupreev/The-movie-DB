// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: _MovieNameWidget(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
          child: _SummeryWidget(),
        ),
        Text(
          'Overview',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'vsdflbmsfsmblsfdmbklsfbmsfklbnsfklbmflbsmfdbksfngbksfgbnsflgngkngkfgkngknkfgndgkmdglnmdgklnmdgknmgkndmgnkdgmndkgnmfg',
          style: TextStyle(color: Colors.white),
        ),
        Row(
          children: [
            Column(children: [
              Text('Stefano Solima', style: TextStyle(color: Colors.white)),
              Text('director', style: TextStyle(color: Colors.white)),
            ]),
            Column(children: [
              Text('Stefano Solima', style: TextStyle(color: Colors.white)),
              Text('director', style: TextStyle(color: Colors.white)),
            ])
          ],
        ),
        Row(
          children: [
            Column(children: [
              Text('Stefano Solima', style: TextStyle(color: Colors.white)),
              Text('director', style: TextStyle(color: Colors.white)),
            ]),
            Column(children: [
              Text('Stefano Solima', style: TextStyle(color: Colors.white)),
              Text('director', style: TextStyle(color: Colors.white)),
            ])
          ],
        )
      ],
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
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
