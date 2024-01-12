import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:luxedu/helpers/routing/route_handlers.dart';

class Routes {
  static String homepagePage = "/";
  static String loginPage = "/login";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return;
      },
    );

    router.define(
      homepagePage,
      handler: homepageHandler,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
    router.define(
      loginPage,
      handler: loginHandler,
      transitionType: TransitionType.none,
      transitionDuration: const Duration(milliseconds: 100),
    );
  }
}
