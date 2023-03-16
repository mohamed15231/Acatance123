part of'HomeWidgetsImports.dart';

class BuildTabItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const BuildTabItem({super.key, required this.icon, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Tab(
      iconMargin: const EdgeInsets.all(0),
      text: title,
      child: Icon(icon),
    );
  }
}