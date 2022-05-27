import 'package:flutter/material.dart';
import 'package:themoviedb/ui/Theme/app_colors.dart';
import 'package:themoviedb/ui/navigation/main_navigation.dart';
import 'package:themoviedb/ui/widgets.dart/auth/auht_model.dart';
import 'package:themoviedb/ui/widgets.dart/main_screen/main__screen_widget.dart';

import '../auth/auth_widget.dart';
import '../movie_details/movie_details_widget.dart';

class MyApp extends StatelessWidget {
  // static final mainNavigation = MainNavigation();
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': (context) =>
            AuthProvider(model: AuthModel(), child: const AuthWidget()),
        '/main_screen': (context) => const MainScreenWidget(),
        '/main_screen/movie_details': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int) {
            return MovieDetailsWidget(movieId: arguments);
          } else {
            return const MovieDetailsWidget(movieId: 0);
          }
        },
      },
      initialRoute: '/auth',
    );
  }
}
