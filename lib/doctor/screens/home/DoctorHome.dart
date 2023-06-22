
part of 'DoctorHomeImports.dart';

class Doctor_Home extends StatefulWidget {
  const Doctor_Home({Key? key}) : super(key: key);

  @override
  State<Doctor_Home> createState() => _Doctor_HomeState();
}

class _Doctor_HomeState extends State<Doctor_Home> {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<Doctor_Cubit,Doctor_State>(
      builder: (BuildContext context, state) {
        var cubit=Doctor_Cubit.get(context);
        return Scaffold(
          bottomNavigationBar:CustomAnimatedBottomBar(
              containerHeight: 80,
            items: tabs,
            animationDuration: Duration(milliseconds: 5000),
            curve: Curves.ease,
            onItemSelected: (value) {
              cubit.changePage(value);
            },
            selectedIndex: cubit.countPage,


          ),



          // CurvedNavigationBar(
          //   color: AppColors.white,
          //   backgroundColor: AppColors.selectedNavBarColor,
          //   buttonBackgroundColor: AppColors.selectedNavBarColor,
          //   // height: 70,
          //   onTap: (value) {
          //     cubit.changePage(value);
          //   },
          //   items: tabs,
          //   index: cubit.countPage,
          // ),
          body: cubit.screen[cubit.countPage],
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
