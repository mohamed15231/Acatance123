part of 'WidgetsImports.dart';

class Body_Settings_Screen extends StatelessWidget {
  const Body_Settings_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        children: [
          Icon_Text_Settings(
            txt: "Profile",
            image: Res.profSettings, onTap: () {  },
          ),
          SizedBox(
            height: 38.h,
          ),
          Icon_Text_Settings(
            txt: "Security",
            image: Res.secSettings, onTap: () {  },
          ),
          SizedBox(
            height: 38.h,
          ),
          Icon_Text_Settings(
            txt: "Notification",
            image: Res.notificationSettings,
            onTap: () {  },
          ),
          SizedBox(
            height: 38.h,
          ),
          Icon_Text_Settings(
            txt: "Updates",
            image: Res.updateSettings, onTap: () {  },
          ),
          SizedBox(
            height: 38.h,
          ),
          Icon_Text_Settings(
            txt: "Logout",
            image: Res.logoutSettings,
            onTap: () {

              DoctorSettingData.logOut().then((value) {
                Navigator_And_Replace.navigate(context: context, page: SelectUser()) ;
              });


          },
          ),
        ],
      ),
    );
  }
}
