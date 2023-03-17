part of 'DoctorProfileImports.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0.w, horizontal: 16.0.w),
      child: SafeArea(
        child: SingleChildScrollView(
          physics:BouncingScrollPhysics(),
          child: Column(
            children: [
              HeaderProfile(),
              SizedBox(
                height: 20.0.h,
              ),
              Body_Screen(),
            ],
          ),
        ),
      ),
    );
  }
}
