part of 'DoctorAttendanceImports.dart';

class DoctorAttendance extends StatefulWidget {
  DoctorAttendance({Key? key}) : super(key: key);

  @override
  State<DoctorAttendance> createState() => _DoctorAttendanceState();
  FlutterToast _flutterToast = FlutterToast();
}

class _DoctorAttendanceState extends State<DoctorAttendance> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit, Doctor_State>(
      builder: (BuildContext context, state) {
        var cubit = Doctor_Cubit.get(context);
        return ConditionalBuilderRec(
          condition: state is GetQrLoadingState,
          builder: (context) {
            return Animation_loader();
          },
          fallback: (context) => ConditionalBuilderRec(
            condition: cubit.qr_model?.image != null ||
                state == DoctorLoadingDownloadQrState,
            builder: (context) => Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Custom_Text(
                        text: "Place the QR Code within this box to scan",
                        color_text: AppColors.textColor,
                        align: TextAlign.center,
                        size: 25.r,
                        fontWeight: FontWeight.w300,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        child: Image.memory(
                          base64Decode(cubit.qr_model!.image!),
                          width: 140.w,
                          height: 140.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      DefaultButton(
                          text: "Download",
                          onPressed: () {
                            cubit.downloadQr(
                              base64Image: cubit.qr_model!.image!,
                            );
                          }),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            fallback: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),

                  Image.asset(Res.qrNotFound),
                  SizedBox(
                    height: 20.h,
                  ),

                  Custom_Text(
                    text:
                        'There is no QR here.\nClick create QR if you want\nto create a new one.',
                    color_text: AppColors.black,
                    size: 20.r,
                    fontWeight: FontWeight.w600,
                    height: 1.5.h,
                    align: TextAlign.center,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    child: Center(
                      child: DefaultButton(
                        textSize: 25.r,
                        text: "Create QR",
                        onPressed: () {
                          cubit.getSubject(
                            doctorId: idValue,
                          );
                          Navigate_Push.navigate(
                              context: context, page: CreateQR());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (BuildContext context, state) {
        if (state is DoctorSuccessDownloadQrState) {
          widget._flutterToast
              .toastShow(text: "Download completed", state: ToastState.SUCCESS);
        }
      },
    );
  }
}
