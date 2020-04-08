import 'package:auto_route/auto_route_annotations.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  TodoHomePage todoHomePage;
  @MaterialRoute(fullscreenDialog: true)
  TodoDetailPage todoDetailPage;
}