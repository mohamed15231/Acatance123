part of 'Widgets_Imports.dart';

class BuildSplashBackground extends StatelessWidget {
  const BuildSplashBackground({Key? key, required this.scaleval}) : super(key: key);
  final double scaleval;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Transform.scale(
        scale:scaleval,
        child: Image.asset(
          Res.splash,

        ),
      ),
    );
  }
}

