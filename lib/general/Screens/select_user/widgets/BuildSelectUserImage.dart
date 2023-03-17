part of 'SelectUserWidgetsImports.dart';

class BuildSelectUserImage extends StatelessWidget {
  const BuildSelectUserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.r),
      child: Image.asset(
        Res.selectType,
        alignment: FractionalOffset(1.w , 10),
        width: 491.w,
        height: 316.h,
      ),
    );
  }
}
