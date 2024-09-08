import 'package:auto_route/auto_route.dart';
import 'package:pharmadeal/const/routes.dart';
import 'package:pharmadeal/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
      page: SplashRoute.page,
      path: Routes.splash,
      initial: true,
    ),
    AutoRoute(
      page: OnboardingRoute.page,
      path: Routes.onboarding,
    ),
    AutoRoute(
      page: AuthRoute.page,
      path: Routes.auth,
    ),
    AutoRoute(
      page: DashboardRoute.page,
      path: Routes.dashboard,
    ),
    AutoRoute(
      page: LoginRoute.page,
      path: Routes.login,
    ),
    AutoRoute(
      page: SignupRoute.page,
      path: Routes.signup,
    ),
    AutoRoute(
      page: MainRoute.page,
      path: Routes.mainpage,
    ),
    AutoRoute(
      page: NotFoundRoute.page,
      path: '*',
    ),
  ];
}
