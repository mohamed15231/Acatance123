part of'RegisterWidgetsImports.dart';

class BuildRegisterAppBar extends StatefulWidget {
  const BuildRegisterAppBar({Key? key}) : super(key: key);

  @override
  State<BuildRegisterAppBar> createState() => _BuildRegisterAppBarState();
}

class _BuildRegisterAppBarState extends State<BuildRegisterAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      shape: const ContinuousRectangleBorder(

      ),
      centerTitle: true,
      title: Container(
        margin: const EdgeInsets.all(15),
        child: CustomText(
          title: 'Register new account',
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
