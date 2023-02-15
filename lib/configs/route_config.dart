import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/constants/route_constants.dart';
import '/screens/details_screen.dart';
import '/screens/home_screen.dart';
import '/screens/root_layout.dart';
import '/screens/splash_screen.dart';
import '../screens/email_template.dart';
import '../screens/slot_configuration.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

class RouteConfig {
  static final appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: RouteConstants.splashScreen,
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        name: RouteConstants.homeScreen,
        path: '/home',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: 0,
            child: const HomeScreen(),
          ),
        ),
        routes: [
          GoRoute(
            path: 'details/:id',
            name: RouteConstants.detailsScreen,
            pageBuilder: (context, state) {
              // extrated from here
              // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/transition_animations.dart
              return CustomTransitionPage(
                child: RootLayout(
                  key: _scaffoldKey,
                  currentIndex: 0,
                  child: DetailsScreen(
                    id: state.params['id'],
                  ),
                ),
                transitionDuration: const Duration(milliseconds: 150),
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  // Change the opacity of the screen using a Curve based on the the animation's
                  // value
                  return FadeTransition(
                    opacity:
                        CurveTween(curve: Curves.easeInOut).animate(animation),
                    child: child,
                  );
                },
              );
            },
          )
        ],
      ),
      GoRoute(
        name: RouteConstants.emailTemplateScreen,
        path: '/email-template',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: 1,
            child: const EmailTemplateScreen(),
          ),
        ),
      ),
      GoRoute(
        name: RouteConstants.slotConfigurationScreen,
        path: '/slot-configuration',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            currentIndex: 2,
            child: const SlotConfiguration(),
          ),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text('Not Found'),
        ),
      ),
    ),
  );
}
