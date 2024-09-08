// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:pharmadeal/features/auth/view/auth_page.dart' deferred as _i1;
import 'package:pharmadeal/features/auth/view/login_page.dart' deferred as _i3;
import 'package:pharmadeal/features/auth/view/signup_page.dart' deferred as _i7;
import 'package:pharmadeal/features/dashboard/view/dashboard_page.dart'
    deferred as _i2;
import 'package:pharmadeal/features/main_navigation/view/mainpage_page.dart'
    deferred as _i4;
import 'package:pharmadeal/features/not_found/view/not_found_page.dart'
    deferred as _i5;
import 'package:pharmadeal/features/onboarding/view/onboarding_page.dart'
    deferred as _i6;
import 'package:pharmadeal/features/splash/view/splash_page.dart'
    deferred as _i8;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i9.PageRouteInfo<void> {
  const AuthRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i1.loadLibrary,
        () => _i1.AuthPage(),
      );
    },
  );
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.DashboardPage(),
      );
    },
  );
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i9.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.LoginPage(key: args.key),
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i4.loadLibrary,
        () => _i4.MainPage(),
      );
    },
  );
}

/// generated route for
/// [_i5.NotFoundPage]
class NotFoundRoute extends _i9.PageRouteInfo<void> {
  const NotFoundRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NotFoundRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotFoundRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i5.loadLibrary,
        () => _i5.NotFoundPage(),
      );
    },
  );
}

/// generated route for
/// [_i6.OnboardingPage]
class OnboardingRoute extends _i9.PageRouteInfo<void> {
  const OnboardingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i6.loadLibrary,
        () => _i6.OnboardingPage(),
      );
    },
  );
}

/// generated route for
/// [_i7.SignupPage]
class SignupRoute extends _i9.PageRouteInfo<void> {
  const SignupRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i7.loadLibrary,
        () => _i7.SignupPage(),
      );
    },
  );
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i8.loadLibrary,
        () => _i8.SplashPage(),
      );
    },
  );
}
