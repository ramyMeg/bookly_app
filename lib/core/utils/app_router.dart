import 'package:bookly_app/Features/home/presentation/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
 static final router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
    GoRoute(
          path: kHomeView,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
          
        ),
        GoRoute(
          path: kBookDetailsView,
          builder: (BuildContext context, GoRouterState state) {
            return const BookDetailsView();
          },
          
        ),
      ],
    ),
  ],
);
}