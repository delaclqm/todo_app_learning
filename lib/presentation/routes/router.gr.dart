// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:todo_app_learning/presentation/pages/splash/splash_page.dart';
import 'package:todo_app_learning/presentation/pages/sign_in/sign_in.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_home/todo_home.dart';
import 'package:todo_app_learning/presentation/pages/todo/todo_detail/todo_detail_page.dart';
import 'package:todo_app_learning/domain/todo/todo_category/todo_category.dart';

class Router {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const todoHomePage = '/todo-home-page';
  static const todoDetailPage = '/todo-detail-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage(),
          settings: settings,
        );
      case Router.todoHomePage:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute<dynamic>(
          builder: (_) => TodoHomePage(key: typedArgs).wrappedRoute,
          settings: settings,
        );
      case Router.todoDetailPage:
        if (hasInvalidArgs<TodoDetailPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<TodoDetailPageArguments>(args);
        }
        final typedArgs = args as TodoDetailPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => TodoDetailPage(
              key: typedArgs.key, todoCategory: typedArgs.todoCategory),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//TodoDetailPage arguments holder class
class TodoDetailPageArguments {
  final Key key;
  final TodoCategory todoCategory;
  TodoDetailPageArguments({this.key, @required this.todoCategory});
}
