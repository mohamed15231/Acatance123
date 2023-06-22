part of 'DoctorSettingImports.dart';

class DoctorSetting extends StatefulWidget {
  const DoctorSetting({Key? key}) : super(key: key);

  @override
  State<DoctorSetting> createState() => _DoctorSettingState();
}

class _DoctorSettingState extends State<DoctorSetting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0.w, horizontal: 16.0.w),
        child: SafeArea(
          child: Column(
            children: [
              HeaderProfile(),
              SizedBox(
                height: 54.h,
              ),
              Body_Settings_Screen()
            ],
          ),
        ),
      ),
    );
  }
}
