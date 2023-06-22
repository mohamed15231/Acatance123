part of 'onBoardingImports.dart';

class On_Boarding extends StatelessWidget {
  On_Boarding({Key? key}) : super(key: key);
  On_Boarding_Data on_boarding_data=On_Boarding_Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Custom_Skip_Button(),
            Expanded(child: Cutom_Page_View(on_boarding_data: on_boarding_data.boarding,)),
            Smooth_Indicator(on_boarding_data: on_boarding_data ),
            SizedBox(
              height: 70.spMin,
            ),
          ],
        ),
      ),
    );
  }
}
