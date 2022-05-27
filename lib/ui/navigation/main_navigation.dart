// import 'package:flutter/cupertino.dart';

// import '../widgets.dart/auth/auth_widget.dart';
// import '../widgets.dart/main_screen/main__screen_widget.dart';
// import '../widgets.dart/movie_details/movie_details_widget.dart';

// abstract class MainNavigationRoutesNames {
//   static const auth = '/auth';
//   static const mainScreen = '/main_screen';
//   static const movieDetails = '/movie_details';
// }

// class MainNavigation {
//   final routes = <String, Widget Function(BuildContext)>{
//     '/auth': (context) => AuthWidget(),
//     '/main_screen': (context) => MainScreenWidget(),
//     '/main_screen/movie_details': (context) {
//       final arguments = ModalRoute.of(context)?.settings.arguments;
//       if (arguments is int) {
//         return MovieDetailsWidget(movieId: arguments);
//       } else {
//         return MovieDetailsWidget(movieId: 0);
//       }
//     }
//   };
// }
