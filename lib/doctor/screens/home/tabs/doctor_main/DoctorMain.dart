part of 'DoctorMainImports.dart';

class DoctorMain extends StatefulWidget {
  const DoctorMain({Key? key}) : super(key: key);

  @override
  State<DoctorMain> createState() => _DoctorMainState();
}

class _DoctorMainState extends State<DoctorMain> {
  DoctorMainScreenData doctorMainData = DoctorMainScreenData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: doctorMainData.scaffoldKey,
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
                doctorMainData.scaffoldKey.currentState!.openDrawer();
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
              ],
            ),
          ),
        ],
      )

    );
  }
}
