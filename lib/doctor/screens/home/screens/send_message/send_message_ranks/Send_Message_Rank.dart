import 'package:acatance/doctor/cubit/DoctorCubit.dart';
import 'package:acatance/doctor/cubit/DoctorState.dart';
import 'package:acatance/doctor/screens/home/screens/create_qr/Create_Qr_Imports.dart';
import 'package:acatance/doctor/screens/home/screens/send_message/Send_Message_Imports.dart';
import 'package:acatance/doctor/screens/home/screens/send_message/send_message_ranks/widget/WidgetImports.dart';
import 'package:acatance/general/Screens/widgets/Widgets_Imports.dart';
import 'package:acatance/general/constants/ConstantValues.dart';
import 'package:conditional_builder_rec/conditional_builder_rec.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../general/Screens/widgets/AppColors.dart';

class Send_Message_Ranks extends StatefulWidget {
  const Send_Message_Ranks({Key? key, }) : super(key: key);

  @override
  State<Send_Message_Ranks> createState() => _Send_Message_RanksState();
}

class _Send_Message_RanksState extends State<Send_Message_Ranks> {
  PlatformFile?  files;
  bool isContainFile=false;
  var messageController=TextEditingController();
  final formKey = GlobalKey<FormState>();
  FlutterToast _flutterToast=FlutterToast();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: BlocConsumer<Doctor_Cubit, Doctor_State>(
        listener: (context, state) {
          if(state is SendMessageSuccessState) {
            _flutterToast.toastShow(
                text: "The message has been Sent", state: ToastState.SUCCESS);
          }
          if(state is SendMessageErrorState ){
            _flutterToast.toastShow(
                text: "The message was not sent", state: ToastState.ERROR);
          }
        },
        builder: (BuildContext context, state) {
          var cubit = Doctor_Cubit.get(context);
          return ConditionalBuilderRec(
            condition: cubit.get_ranks_model?.subjects==null ||state is SendMessageLoadingState ,
            builder: (context) => Animation_loader(),
            fallback: (context) {
              return SingleChildScrollView(
                physics:BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListviewRanks(),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomInputFormField(
                          labeltxt: "Enter message",
                          controller: messageController,
                          validator: (value){
                            if(value!.isEmpty){
                              return "Message mustn't empty";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        if(isContainFile==true)
                          SizedBox(
                            height: 94,
                            child:Send_Message_Data.buildFile(files!) ,
                          ),

                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Custom_Text_Button(
                            ContainerColor: Colors.blue,
                            alignment: Alignment.center,
                            // iconSize: 20,
                            // color: Colors.black,
                            // icon: const Icon(Icons.add_alert),

                            onPressed: () async {
                              final result =
                              await FilePicker.platform.pickFiles();
                              if(result==null) return;
                              setState(() {
                                files=result.files.first;
                                isContainFile=true;

                              });

                              // openSourse(file: result.files);
                            }, text: 'Choose File', textColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Button_Send_Message(
                          onTap: () {
                            if(formKey.currentState!.validate()){
                              cubit.sendMessage(
                                DeptId:  CreateQrData.IdDepartment(chooseDepartment: cubit.stateDepartment),
                                DoctorId: idValue,
                                message: messageController.text,
                                RankId: cubit.rank_Id!,
                              );
                              messageController.text="";
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

}
