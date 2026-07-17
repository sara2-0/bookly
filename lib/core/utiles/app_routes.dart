import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookView';
  static const kSearchView = '/SearchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          return const BookDetailsView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
