part of 'DoctorHomeImports.dart';

class DoctorHomeData{

  final GlobalKey<ScaffoldState> scaffold = GlobalKey();
  final GenericBloc<int> navCubit = GenericBloc(0);

  late AnimationController animationController;
  late TabController tabController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  List<BuildDoctorTabItem> tabs = const [
    BuildDoctorTabItem(title: "Home", icon: Icons.home),
    BuildDoctorTabItem(title: "Profile", icon:Icons.person),
    BuildDoctorTabItem(title: "Scan", icon: Icons.date_range),
    BuildDoctorTabItem(title: "Setting", icon: Icons.settings),
  ];

  void initBottomNavigation(TickerProvider ticker) {
    tabController = TabController(length: 4, vsync: ticker, initialIndex: 0);
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: ticker);
    curve = CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
    Future.delayed(const Duration(seconds: 1), () => animationController.forward());
  }

  void animateTabsPages(int index, BuildContext context) {
    navCubit.onUpdateData(index);
    tabController.animateTo(index);
  }

}