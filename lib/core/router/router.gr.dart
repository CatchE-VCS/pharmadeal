// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:pharmadeal/features/auth/view/auth_page.dart' deferred as _i1;
import 'package:pharmadeal/features/dashboard/view/dashboard_page.dart'
    deferred as _i2;
import 'package:pharmadeal/features/not_found/view/not_found_page.dart'
    deferred as _i3;
import 'package:pharmadeal/features/onboarding/view/onboarding_page.dart'
    deferred as _i4;
import 'package:pharmadeal/features/splash/view/splash_page.dart'
    deferred as _i5;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i6.PageRouteInfo<void> {
  const AuthRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i1.loadLibrary,
        () => _i1.AuthPage(),
      );
    },
  );
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute({List<_i6.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.DashboardPage(),
      );
    },
  );
}

/// generated route for
/// [_i3.NotFoundPage]
class NotFoundRoute extends _i6.PageRouteInfo<void> {
  const NotFoundRoute({List<_i6.PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.NotFoundPage(),
      );
    },
  );
}

/// generated route for
/// [_i4.OnboardingPage]
class OnboardingRoute extends _i6.PageRouteInfo<void> {
  const OnboardingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i4.loadLibrary,
        () => _i4.OnboardingPage(),
      );
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i5.loadLibrary,
        () => _i5.SplashPage(),
      );
    },
  );
}
