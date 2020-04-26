import 'package:auto_route/auto_route_annotations.dart';

import '../pages/sign_in/sign_in.dart';
import '../pages/splash/splash_page.dart';
import '../pages/todo/todo_home/todo_home.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  TodoHomePage todoHomePage;
  // @MaterialRoute(fullscreenDialog: true)
  // TodoDetailPage todoDetailPage;
}