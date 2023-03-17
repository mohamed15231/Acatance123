// part of 'HomeImports.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> with TickerProviderStateMixin {
//   final HomeData homeData = HomeData();
//
//   @override
//   void initState() {
//     homeData.initBottomNavigation(this);
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
//           key: homeData.scaffold,
//           resizeToAvoidBottomInset: false,
//           body: TabBarView(
//             controller: homeData.tabController,
//             physics: const NeverScrollableScrollPhysics(),
//             children: const [
//               Main(),
//               Attendance(),
//               Setting(),
//               Profile(),
//             ],
//           ),
//           bottomNavigationBar: BlocBuilder<GenericBloc<int>, GenericState<int>>(
//             bloc: homeData.navCubit,
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
//         return TabIcon(index: index, active: isActive, homeData: homeData,);
//       },
//       backgroundColor: AppColors.white,
//       splashColor: AppColors.primary,
//       activeIndex: current,
//       elevation: 20,
//       notchAndCornersAnimation: homeData.animation,
//       splashSpeedInMilliseconds: 300,
//       notchSmoothness: NotchSmoothness.verySmoothEdge,
//       gapLocation: GapLocation.none,
//       leftCornerRadius: 30,
//       rightCornerRadius: 30,
//       height: 73,
//       onTap: (index) => homeData.animateTabsPages(index, context),
//     );
//   }
//
//
//   @override
//   void dispose() {
//     homeData.tabController.dispose();
//     homeData.animationController.dispose();
//     super.dispose();
//   }
// }

part of 'HomeImports.dart';

class Student_Home extends StatelessWidget {
  const Student_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Student_Cubit(),
      child: BlocConsumer<Student_Cubit,StudentState>(
        builder: (BuildContext context, state) {
          var cubit=Student_Cubit.get(context);

          return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              color: AppColors.white,
              backgroundColor: AppColors.selectedNavBarColor,
              buttonBackgroundColor: AppColors.selectedNavBarColor,
              height: 70,
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
