import 'dart:convert';
import 'package:acatance/doctor/cubit/DoctorState.dart';
import 'package:acatance/doctor/models/get_Lectures/Get_Lectures_Model.dart';
import 'package:acatance/doctor/models/get_department/Department_Description.dart';
import 'package:acatance/doctor/models/get_ranks/Get_Ranks.dart';
import 'package:acatance/doctor/models/get_subject/get_subject.dart';
import 'package:acatance/doctor/models/lecture_states/Lecture_States_Model.dart';
import 'package:acatance/doctor/screens/home/screens/create_qr/Create_Qr_Imports.dart';
import 'package:acatance/doctor/screens/home/tabs/doctor_main/DoctorMainImports.dart';
import 'package:acatance/doctor/screens/home/tabs/doctor_profile/DoctorProfileImports.dart';
import 'package:acatance/doctor/screens/home/tabs/doctor_setting/DoctorSettingImports.dart';
import 'package:acatance/general/constants/ConstantValues.dart';
import 'package:acatance/general/models/login_model/LoginModel.dart';
import 'package:acatance/general/models/news_model/news_model.dart';
import 'package:acatance/general/utilities/shared/http_helper/http_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:http/http.dart' show get;
import 'package:path/path.dart' as path;
import '../../general/models/qr_model/Qr_Model.dart';
import '../screens/home/tabs/doctor_attendance/DoctorAttendanceImports.dart';
//student
//mohamedtarek45@gmail.com
//123456789

//doctor
//mohamedtarek45.dr@gmail.com
//123456789

class Doctor_Cubit extends Cubit<Doctor_State> {
  Doctor_Cubit() : super(DoctorInitialState());

  static Doctor_Cubit get(context) => BlocProvider.of(context);

  int countPage = 0;

  Get_Subject_Model? get_subject_model;

  late List<bool> pressedAttentions;

  News_Model? news_model;

  String? subject_Id;
  LoginModel? loginModel;

  Future<File> writeImageTemp(String base64Image, String imageName) async {
    print(base64Image);
    final dir = await getTemporaryDirectory();
    await dir.create(recursive: true);
    final tempFile = File(path.join(dir.path, imageName));
    await tempFile.writeAsBytes(base64.decode(base64Image));
    return tempFile;
  }

  void downloadQr({
    required String base64Image,
  }) async {
    emit(DoctorLoadingDownloadQrState());
    writeImageTemp(base64Image, "QrImage.png").then((value) async {
      await GallerySaver.saveImage(
          "/data/user/0/com.example.acatance/cache/QrImage.png",
          toDcim: true,
          albumName: "Qr");
      print(value);
      emit(DoctorSuccessDownloadQrState());
    });
  }

  int dropDownValue = 10;

  // List of items in our dropdown menu
  List items =[
    10,
    20,
    30,
    40,
    50,
    60,
    70,
    80
  ];

  void changeDropDownButton({required int? newValue}) {

    dropDownValue=newValue!;
    emit(ChangeDropDownButton());

  }

  void getLoginData({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingDoctorState());
    HttpHelper.postData(
      url: "${baseUrl}Account/Login",
      data: {
        "email": email,
        "password": password,
      },
    ).then((value) {
      loginModel = LoginModel.fromJson(value);
      emit(LoginSuccessDoctorState());
    }).catchError((error) {
      print(error);
      emit(LoginErrorDoctorState());
    });
  }

  void getNews() {
    HttpHelper.getDataHttp(
      url: "${baseUrl}News",
    ).then((value) {
      news_model = News_Model.fromJson(value);
      emit(GetNewsDoctorState());
    });
  }

  void sendMessage({
  required String message,
  required String DeptId ,
  required String RankId  ,
  required String DoctorId  ,
    String? file  ,

}) {
    emit(SendMessageLoadingState());
    HttpHelper.postData(
      url: "${baseUrl}Doctors/SendMessage",
      data: {
        "Message":message,
        "DeptId ":DeptId,
        "RankId  ":RankId ,
        "DoctorId  ":DoctorId ,
      }
    ).then((value) {
      emit(SendMessageSuccessState());
    }).catchError((error){
    emit(SendMessageErrorState());
    print(error);
    });
  }
  void make_Quiz({
  required String StartTime,
  required String DeptId ,
  required String SubjectId ,
  required String RankId  ,
  required String DoctorId  ,
  required int Degree  ,
  required String ExamName  ,
  required int Duration   ,

}) {
    print(DeptId);
    emit(MakeQuizLoadingState());
    HttpHelper.postData(
      url: "${baseUrl}Doctors/AddExam",
      data: {
        "DeptId ":DeptId,
        "RankId":RankId ,
        "DoctorId":DoctorId ,
        "StartTime":StartTime,
        "Subject_Id":SubjectId,
        "Duration":Duration  ,
        "Degree":Degree ,
        "ExamName":ExamName  ,
      }
    ).then((value) {
      print(value);
      emit(MakeQuizSuccessState());
    }).catchError((error){
    emit(MakeQuizErrorState());
    print(error);
    });
  }

  DepartmentDescriptionModels? departmentDescriptionModels;
  List<bool>? isMore;

  void onTapMore(int index) {
    isMore![index] = !isMore![index];
    emit(DoctorChangeValueIsMoreState());
  }

  void getDepartment() {
    HttpHelper.getDataHttp(
      url: "${baseUrl}api/Generic/Departments",
    ).then((value) {
      departmentDescriptionModels = DepartmentDescriptionModels.fromJson(value);
      isMore =
          departmentDescriptionModels!.departments!.map((e) => false).toList();
      emit(GetDepartmentDoctorState());
    });
  }

  Qr_Model? qr_model;

  Future getQr({
    required String lecNumber,
    required int qr_Duration,
    required String startTime,
    required String doctorId,
    required String subjectId,
  }) async {
    emit(GetQrLoadingState());
    HttpHelper.postData(url: "${baseUrl}Doctors/MakeLecture", data: {
      "lecNumber": lecNumber,
      "startTime": startTime,
      "qr_Duration": qr_Duration,
      "subject_Id": subjectId,
      "doctor_Id": doctorId
    }).then((value) {
      qr_model = Qr_Model.fromJson(value);
      emit(GetQrSuccessState());
    }).catchError((error){
      emit(GetQrErrorState());
    });
  }



  void getSubject({
    required String doctorId,
  }) {
    HttpHelper.getDataHttp(
        url: "${baseUrl}Doctors/GetMySubjects",
        queryParam: {"DocterId": doctorId}).then((value) {
      get_subject_model = Get_Subject_Model.fromJson(value);
      subject_Id = get_subject_model!.subjects![0].id;
      pressedAttentions =
          get_subject_model!.subjects!.map((e) => false).toList();
      pressedAttentions[0] = true;

      emit(GetSubjectApi());
    });
  }

  Get_Rank_Model? get_ranks_model;
  String? rank_Id;

  late List<bool> pressedAttentionsRanks;

  void getRanges({
    required String doctorId,
    required String deptId,
  }) {
    HttpHelper.getDataHttp(url: "${baseUrl}api/Generic/Ranks", queryParam: {
      "DocterId": doctorId,
      "DeptId": deptId,
    }).then((value) {
      print(value);
      get_ranks_model = Get_Rank_Model.fromJson(value);
      rank_Id = get_ranks_model!.subjects![0].id;
      print(rank_Id);
      pressedAttentionsRanks =
          get_ranks_model!.subjects!.map((e) => false).toList();
      pressedAttentionsRanks[0] = true;

      emit(GetRanksApi());
    });
  }

  GetLectureModel? getLectureModel;

  Future<List<dynamic>> removeDuplication({
  required List<dynamic> json,
})async{
    List<Map<String, dynamic>> getData = [];
    if(json.isNotEmpty){
      getData.add(json[0]);
      bool isContain = false;
      json.forEach((element) {
        isContain = false;
        for (int i = 0; i < getData.length; i++) {
          if (getData[i]['lecNumber'] == element['lecNumber']) {
            isContain = true;
          }
        }
        if (isContain == false) {
          getData.add(element);
        }
      });

    }
    return getData;



  }

  void getLectures({
    required String doctorId,
    required String subjectId,
  }) {
    emit(LoaderGetLectureApi());
    HttpHelper.getDataHttp(url: "${baseUrl}Doctors/GetLectures", queryParam: {
      "DocterId": doctorId,
      "SubjectId": subjectId,
    }).then((value)async {
      removeDuplication(json: value).then((value) {
        getLectureModel = GetLectureModel.fromJson(value);
        emit(GetLectureApi());

      });


    });
  }

  LectureStatesModel? lectureStatesModel;

  void getLectureStates({
    required String lecId,
  }) {
    HttpHelper.getDataHttp(url: "${baseUrl}Doctors/GetStatusOfLecture", queryParam: {
      "LectureId": lecId,
    }).then((value)async {
      emit(GetLectureLoadingStatesApi());
      lectureStatesModel = LectureStatesModel.fromJson(value);
      emit(GetLectureStatesApi());
    });
  }

  ChooseDepartmentEnum stateDepartment = ChooseDepartmentEnum.Cs;

  void onTap_It() {
    stateDepartment = ChooseDepartmentEnum.IT;
    emit(DoctorOnTapDepartmentState());
  }

  void onTap_Is() {
    stateDepartment = ChooseDepartmentEnum.Is;
    emit(DoctorOnTapDepartmentState());
  }

  void onTap_Cs() {
    stateDepartment = ChooseDepartmentEnum.Cs;
    emit(DoctorOnTapDepartmentState());
  }
  ChooseWeekNumberEnum stateWeekNum = ChooseWeekNumberEnum.First;

  void onTap_FirstWeek() {
    stateWeekNum = ChooseWeekNumberEnum.First;
    emit(DoctorOnTapWeekState());
  }

  void onTap_SecondWeek() {
    stateWeekNum = ChooseWeekNumberEnum.Second;
    emit(DoctorOnTapWeekState());
  }

  void onTap_ThirdWeek() {
    stateWeekNum = ChooseWeekNumberEnum.Third;
    emit(DoctorOnTapWeekState());
  }

  void onTap_FourthWeek() {
    stateWeekNum = ChooseWeekNumberEnum.Fourth;
    emit(DoctorOnTapWeekState());
  }

  void onTap_FifthWeek() {
    stateWeekNum = ChooseWeekNumberEnum.Fifth;
    emit(DoctorOnTapWeekState());
  }

  void onTap_SixthWeek() {
    stateWeekNum = ChooseWeekNumberEnum.Sixth;
    emit(DoctorOnTapWeekState());
  }

  void onTap_SeventhWeek() {
    stateWeekNum = ChooseWeekNumberEnum.Seventh;
    emit(DoctorOnTapWeekState());
  }

  void changePage(int index) {
    countPage = index;
    emit(DoctorChangeNavBarState());
  }

  void moveToScanScreen(int index) {
    countPage = index;
    emit(GetQrLoadingState());
  }

  List<Widget> screen = [
    DoctorMain(),
    DoctorProfile(),
    DoctorAttendance(),
    DoctorSetting(),
  ];
}
