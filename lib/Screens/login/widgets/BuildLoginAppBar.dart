part of 'LoginWidgetsImports.dart';

class BuildLoginAppBar extends StatelessWidget {
  const BuildLoginAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      centerTitle: true,
      title: Container(
        margin: const EdgeInsets.all(15),
        child: CustomText(
          title: 'Login now',
          size: 25,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
      ),

      floating: false,
      pinned: false,
      expandedHeight: 70,

    );
  }
}
