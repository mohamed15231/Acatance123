// part of 'DoctorHomeImports.dart';
//
// class DoctorHome extends StatefulWidget {
//   const DoctorHome({Key? key}) : super(key: key);
//
//   @override
//   State<DoctorHome> createState() => _DoctorHomeState();
// }
//
// class _DoctorHomeState extends State<DoctorHome> with TickerProviderStateMixin {
//   final DoctorHomeData doctorHomeData = DoctorHomeData();
//
//   @override
//   void initState() {
//     doctorHomeData.initBottomNavigation(this);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       child: DefaultTabController(
//         length: 4,
//         initialIndex:0,
//         child: Scaffold(
//           key: doctorHomeData.scaffold,
//           resizeToAvoidBottomInset: false,
//           body: TabBarView(
//             controller: doctorHomeData.tabController,
//             physics: const NeverScrollableScrollPhysics(),
//             children: const [
//               DoctorMain(),
//               DoctorAttendance(),
//               DoctorSetting(),
//               DoctorProfile(),
//             ],
//           ),
//           bottomNavigationBar: BlocBuilder<GenericBloc<int>, GenericState<int>>(
//             bloc: doctorHomeData.navCubit,
//             builder: (context, state) {
//               return _buildBottomNavigationBar(state.data);
//             },
//           ),
//         ),
//       ),
//       onWillPop: ()async=>false,
//     );
//   }
//   Widget _buildBottomNavigationBar(int current) {
//     return AnimatedBottomNavigationBar.builder(
//       itemCount: 4,
//       tabBuilder: (int index, bool isActive) {
//         return DoctorTabIcon(index: index, active: isActive, doctorHomeData: doctorHomeData,);
//       },
//       backgroundColor: AppColors.white,
//       splashColor: AppColors.primary,
//       activeIndex: current,
//       elevation: 20,
//       notchAndCornersAnimation: doctorHomeData.animation,
//       splashSpeedInMilliseconds: 300,
//       notchSmoothness: NotchSmoothness.verySmoothEdge,
//       gapLocation: GapLocation.none,
//       leftCornerRadius: 30,
//       rightCornerRadius: 30,
//       height: 73,
//       onTap: (index) => doctorHomeData.animateTabsPages(index, context),
//     );
//   }
//
//
//   @override
//   void dispose() {
//     doctorHomeData.tabController.dispose();
//     doctorHomeData.animationController.dispose();
//     super.dispose();
//   }
// }

part of 'DoctorHomeImports.dart';

class Doctor_Home extends StatelessWidget {
  const Doctor_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) =>Doctor_Cubit(),
      child: BlocConsumer<Doctor_Cubit,Doctor_State>(
        builder: (BuildContext context, state) {
          var cubit=Doctor_Cubit.get(context);

          return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              color: AppColors.white,
              backgroundColor: AppColors.selectedNavBarColor,
              buttonBackgroundColor: AppColors.selectedNavBarColor,
              // height: 70,
              onTap: (value) {
                cubit.changePage(value);
              },
              items: tabs,
            ),
            body: cubit.screen[cubit.countPage],
          );
        },
        listener: (BuildContext context, Object? state) {},
      ),
    );
  }
}
