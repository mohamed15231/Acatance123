import 'dart:convert';

import 'package:acatance/doctor/cubit/DoctorCubit.dart';
import 'package:acatance/doctor/cubit/DoctorState.dart';
import 'package:acatance/doctor/screens/home/screens/create_qr/Create_Qr_Imports.dart';
import 'package:acatance/general/Screens/widgets/AppColors.dart';
import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../general/Screens/widgets/Widgets_Imports.dart';
import '../../../../../general/constants/ConstantValues.dart';
import '../../../../../res.dart';

part 'DoctorAttendance.dart';
part 'DoctorAttendanceData.dart';