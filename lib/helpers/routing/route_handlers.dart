import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:luxedu/pages/homepage.dart';
import 'package:luxedu/pages/login.dart';

var loginHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const Login();
  },
);
var homepageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const Homepage();
  },
);
