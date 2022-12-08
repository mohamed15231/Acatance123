import 'dart:convert';
import 'package:acatance/Screens/login/cubit/login_state.dart';
import 'package:acatance/models/login_model/LoginModel.dart';
import 'package:acatance/shared/dio_helper/dio_helper.dart';
import 'package:acatance/shared/http_helper/http_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  LoginModel? loginModel;

  void getLoginData({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    HttpHelper.postData(
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
