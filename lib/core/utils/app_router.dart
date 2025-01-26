import 'package:flutter/material.dart';
import 'package:gemverse/features/chat/view/chat_view.dart';
import '../../features/boarding/view/boarding_view.dart';
import '../../features/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kBoardingView = '/boardingView';
  static const kChatView = '/chatView';

  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kBoardingView,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const BoardingView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
            transitionDuration:
                const Duration(seconds: 1), // Animation duration
          );
        },
      ),
      GoRoute(
        path: kChatView,
        builder: (BuildContext context, GoRouterState state) {
          return const ChatView();
        },
      ),
    ],
  );
}
