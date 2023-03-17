part of 'WidgetsImports.dart';

class DoctorTabIcon extends StatelessWidget {
  final DoctorHomeData doctorHomeData;
  final int index;
  final bool active;

  const DoctorTabIcon({super.key, required this.index, required this.active, required this.doctorHomeData});

  @override
  Widget build(BuildContext context) {
    Color color = active ? AppColors.secondary : AppColors.blackOpacity;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(doctorHomeData.tabs[index].icon,color: color,),



        ],
      ),
    );
  }
}
