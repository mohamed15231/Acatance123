part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key, required this.notFirstTime}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
  final bool notFirstTime;
}

class _SplashState extends State<Splash> {

  SplashData splashData = SplashData();

  Future scale() async {
    if (splashData.is_First_Time) {
      await Future.delayed(const Duration(milliseconds: 1000), () {});
      splashData.is_First_Time = false;
    }
    while (splashData.scaleval < 20.w) {
      await Future.delayed(const Duration(milliseconds: 3), () {});
      if (mounted)
        setState(() {
          splashData.scaleval += .019;
        });
    }
  }

  Future translation() async {
    if (splashData.is_First_Time) {
      await Future.delayed(const Duration(milliseconds: 1000), () {});
      splashData.is_First_Time = false;
    }
    while (splashData.translationval > -30.w) {
      await Future.delayed(const Duration(milliseconds: 3), () {});
      setState(() {
        splashData.translationval -= 1;
      });
    }
    await Future.delayed(const Duration(milliseconds: 1100), () {});
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_)=> widget.notFirstTime ? SelectUser() : OnBoarding()),
          (route) => false,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scale();
    translation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(alignment: AlignmentDirectional.center, children: [
        BuildSplashBackground(scaleval: splashData.scaleval),
        Transform(
          transform:
              Matrix4.translationValues(0, splashData.translationval, 0),
          child: BuildSplashBody(),
        ),
      ]),
    );
  }
}
