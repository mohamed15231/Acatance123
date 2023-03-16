import 'package:acatance/general/Screens/login/LoginImports.dart';
import 'package:acatance/general/Screens/onBoarding/OnBoardingImports.dart';
import 'package:acatance/general/Screens/splash/SplashImports.dart';
import 'package:acatance/general/utilities/shared/flutter_bloc/flutter_bloc.dart';
import 'package:acatance/general/utilities/utils_functions/cache_helper.dart';
import 'package:acatance/general/utilities/utils_functions/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();

  Widget widget;

  dynamic onBoarding = CacheHelper.getData(key: 'onBoarding');
  dynamic token = CacheHelper.getData(key: 'token');

  if(onBoarding != null){
    if(token != null){
      widget = const Login();
    }
    else{
      widget = const Login();
    }
  }else{
    widget=const OnBoarding();
  }

  print(onBoarding);

  runApp(MyApp(startWidget: widget,));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.startWidget});

  final Widget? startWidget;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360,690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Splash(notFirstTime: false,),
        );
      },
    );
  }
}

