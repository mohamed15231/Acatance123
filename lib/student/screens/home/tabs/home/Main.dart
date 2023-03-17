part of 'MainImports.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  MainScreenData mainData = MainScreenData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: mainData.scaffoldKey,
      backgroundColor: AppColors.white,
      drawer: const Drawer(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            child: IconButton(
              onPressed: () {
                mainData.scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: AppColors.blackOpacity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: Column(
              children: [
                BuildUniversityTeams(),
                BuildDepartmentNews(),
                BuildMostPopular(mainScreenData: mainData,)
              ],
            ),
          ),
        ],
      )

    );
  }
}
