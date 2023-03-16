part of 'SelectUserWidgetsImports.dart';

class BuildSelectUserImage extends StatelessWidget {
  const BuildSelectUserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.r),
      child: Image.asset(Res.selectType),
    );
  }
}
