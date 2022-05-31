import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets.dart/auth/auth_widget.dart';
import '../widgets.dart/main_screen/main__screen_widget.dart';
import '../widgets.dart/movie_details/movie_details_widget.dart';

abstract class MainNavigationRoutesNames {
  static const auth = '/auth';
  static const mainScreen = '/main_screen';
  static const movieDetails = '/movie_details';
}

class MainNavigation {
  String initialRoute(bool isAuth) => isAuth
      ? MainNavigationRoutesNames.mainScreen
      : MainNavigationRoutesNames.auth;
  final routes = <String, Widget Function(BuildContext)>{
    '/auth': (context) => const AuthWidget(),
    '/main_screen': (context) => const MainScreenWidget(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationRoutesNames.movieDetails:
        final arguments = settings.arguments;
        final movieId = arguments is int ? arguments : 0;
        return MaterialPageRoute(
          builder: ((context) => MovieDetailsWidget(movieId: movieId)),
        );

      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (context) => widget);
    }
  }
}
