import 'package:acatance/doctor/cubit/DoctorCubit.dart';
import 'package:acatance/doctor/screens/home/DoctorHomeImports.dart';
import 'package:acatance/doctor/screens/home/tabs/doctor_profile/DoctorProfileImports.dart';
import 'package:acatance/general/Screens/login/LoginImports.dart';
import 'package:acatance/general/Screens/onBoarding/onBoardingImports.dart';
import 'package:acatance/general/Screens/splash/SplashImports.dart';
import 'package:acatance/general/Screens/widgets/AppColors.dart';
import 'package:acatance/general/constants/ConstantValues.dart';
import 'package:acatance/general/utilities/shared/flutter_bloc/flutter_bloc.dart';
import 'package:acatance/general/utilities/utils_functions/cache_helper.dart';
import 'package:acatance/general/utilities/utils_functions/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() async {


  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();

  Widget widget;

  dynamic onBoarding = CacheHelper.getData(key: ConstantValue.onBoarding);
  tokenValue = CacheHelper.getData(key: ConstantValue.token);

  if (onBoarding != null) {
    if (tokenValue != null) {
      widget = const Login();
    } else {
      widget = const Login();
    }
  } else {
    widget = On_Boarding();
  }

  // print(onBoarding);

  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, this.startWidget});

  final Widget? startWidget;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,
          ),
          debugShowCheckedModeBanner: false,
          home:  Splash(
            notFirstTime: false,
          ),


        );
      },
    );
  }
}
