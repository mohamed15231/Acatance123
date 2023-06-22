
part of 'Widgets_Imports.dart';

class Animation_loader extends StatelessWidget {
   Animation_loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Image.asset(
          "assets/images/Gooey loader 1.gif",
          width:1000.w,
          height: 8000.h,

      ),
    );
  }
}
