import 'package:bookly_app/Features/home/presentation/book_details_view.dart';
import 'package:bookly_app/Features/home/presentation/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const ksearchView = '/searchView';

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
            path: ksearchView,
            builder: (BuildContext context, GoRouterState state) {
              return const SearchView();
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
