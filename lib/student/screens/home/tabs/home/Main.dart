part of 'MainImports.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  // MainScreenData mainData = MainScreenData();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(15.0.r),
          child: Column(
            children: [
              BuildUniversityTeams(),
              BuildDepartmentNews(),
              BuildMostPopular()
            ],
          ),
        ),
      ],


    );
  }
}
