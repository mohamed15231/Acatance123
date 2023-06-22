import 'package:acatance/general/models/login_model/LoginModel.dart';
import 'package:acatance/general/utilities/shared/http_helper/http_helper.dart';
import 'package:acatance/student/cubit/StudentState.dart';
import 'package:acatance/student/screens/home/tabs/attendance/AttendanceImports.dart';
import 'package:acatance/student/screens/home/tabs/home/MainImports.dart';
import 'package:acatance/student/screens/home/tabs/profile/ProfileImports.dart';
import 'package:acatance/student/screens/home/tabs/setting/SettingImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../general/screens/widgets/AppColors.dart';

class Student_Cubit extends Cubit<StudentState>{
  Student_Cubit() : super(StudentInitialState());

  static Student_Cubit get(context) => BlocProvider.of(context);



  LoginModel? loginModel;

  List<Widget> screen=[
    Main(),
    Profile(),
    Attendance(),
    Setting(),
  ];

  int countPage=0;
  void changePage(int index){
      countPage=index;
      emit(ChangeNavBarState());
  }





  void getLoginData({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    HttpHelper.postData(
      url: "http://10.0.2.2:5000/Account/Login",
      data: {
        "email": email,
        "password": password,
      },
    ).then((value) {
      loginModel = LoginModel.fromJson(value);
      print(loginModel!.data!.token);
      emit(LoginSuccessState());
    }).catchError((error) {
      print(error);
      emit(LoginErrorState());
    });
  }


}