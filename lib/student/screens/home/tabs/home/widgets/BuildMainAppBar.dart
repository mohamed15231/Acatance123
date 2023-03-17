part of 'MainWidgetsImports.dart';

class BuildMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildMainAppBar({
    super.key,
    required this.mainData,
  });
  final MainScreenData mainData;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          mainData.scaffoldKey.currentState!.openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: AppColors.blackOpacity,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.h);
}
