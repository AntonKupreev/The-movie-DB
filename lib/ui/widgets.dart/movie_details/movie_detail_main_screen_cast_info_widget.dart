// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MovieDetailMainScreenCastInfoWidget extends StatelessWidget {
  const MovieDetailMainScreenCastInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Series Cast',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 300,
            child: Scrollbar(
              child: ListView.builder(
                itemCount: 20,
                itemExtent: 120,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2),
                        ),
                        borderRadius: const BorderRadius.all(
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
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 60,
                                width: 60,
                                child: const Placeholder(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Steven Yeun',
                                    maxLines: 1,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Mark Grayson / Invincible (voice)',
                                    maxLines: 3,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '8 Episodes',
                                    maxLines: 4,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
              onPressed: () {},
              child: Text('Full Cast & Crew'),
            ),
          ),
        ],
      ),
    );
  }
}
