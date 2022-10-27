// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../Screens/forgetPassPinCode/ForgetPassPinCodeImports.dart' as _i5;
import '../Screens/forgetPassword/ForgetPasswordImports.dart' as _i4;
import '../Screens/login/LoginImports.dart' as _i3;
import '../Screens/onBoarding/OnBoardingImports.dart' as _i2;
import '../Screens/register/RegisterImports.dart' as _i7;
import '../Screens/resetPassword/ResetPasswordImports.dart' as _i6;
import '../Screens/splash/SplashImports.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnBoarding.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnBoarding(),
      );
    },
    Login.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.Login(),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ForgetPassword(),
      );
    },
    ForgetPassPinCode.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassPinCode(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ResetPassword(),
      );
    },
    Register.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.Register(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          SplashScreen.name,
          path: '/',
        ),
        _i8.RouteConfig(
          OnBoarding.name,
          path: '/on-boarding',
        ),
        _i8.RouteConfig(
          Login.name,
          path: '/Login',
        ),
        _i8.RouteConfig(
          ForgetPassword.name,
          path: '/forget-password',
        ),
        _i8.RouteConfig(
          ForgetPassPinCode.name,
          path: '/forget-pass-pin-code',
        ),
        _i8.RouteConfig(
          ResetPassword.name,
          path: '/reset-password',
        ),
        _i8.RouteConfig(
          Register.name,
          path: '/Register',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i8.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.OnBoarding]
class OnBoarding extends _i8.PageRouteInfo<void> {
  const OnBoarding()
      : super(
          OnBoarding.name,
          path: '/on-boarding',
        );

  static const String name = 'OnBoarding';
}

/// generated route for
/// [_i3.Login]
class Login extends _i8.PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/Login',
        );

  static const String name = 'Login';
}

/// generated route for
/// [_i4.ForgetPassword]
class ForgetPassword extends _i8.PageRouteInfo<void> {
  const ForgetPassword()
      : super(
          ForgetPassword.name,
          path: '/forget-password',
        );

  static const String name = 'ForgetPassword';
}

/// generated route for
/// [_i5.ForgetPassPinCode]
class ForgetPassPinCode extends _i8.PageRouteInfo<void> {
  const ForgetPassPinCode()
      : super(
          ForgetPassPinCode.name,
          path: '/forget-pass-pin-code',
        );

  static const String name = 'ForgetPassPinCode';
}

/// generated route for
/// [_i6.ResetPassword]
class ResetPassword extends _i8.PageRouteInfo<void> {
  const ResetPassword()
      : super(
          ResetPassword.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPassword';
}

/// generated route for
/// [_i7.Register]
class Register extends _i8.PageRouteInfo<void> {
  const Register()
      : super(
          Register.name,
          path: '/Register',
        );

  static const String name = 'Register';
}
