

import 'package:acatance/Screens/forgetPassPinCode/ForgetPassPinCodeImports.dart';
import 'package:acatance/Screens/forgetPassword/ForgetPasswordImports.dart';
import 'package:acatance/Screens/login/LoginImports.dart';
import 'package:acatance/Screens/onBoarding/OnBoardingImports.dart';
import 'package:acatance/Screens/register/RegisterImports.dart';
import 'package:acatance/Screens/resetPassword/ResetPasswordImports.dart';
import 'package:acatance/Screens/splash/SplashImports.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: OnBoarding),
    AutoRoute(page: Login),
    AutoRoute(page: ForgetPassword),
    AutoRoute(page: ForgetPassPinCode),
    AutoRoute(page: ResetPassword),
    AutoRoute(page: Register),


  ],
)
class $AppRouter {}