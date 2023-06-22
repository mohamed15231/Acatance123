part of 'ButtonOnBoardingImports.dart';

class Cutom_Page_View extends StatelessWidget {
   Cutom_Page_View({Key? key,required this.on_boarding_data}) : super(key: key);

    final List<On_Board_Model> on_boarding_data ;


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: On_Boarding_Data.indicatorPageController,
      physics: BouncingScrollPhysics(),
      itemCount: on_boarding_data.length,
      itemBuilder: (BuildContext context, int index) {
        return Page_View_Data(model: on_boarding_data[index]);
      },
    );
  }
   static Widget Page_View_Data({
     required On_Board_Model model,
   }) {
     return Column(
       // mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         SizedBox(
           height: 5.spMin,
         ),
         Image.asset(
           model.title,
           height: 40.h,
           width: 500.w,
         ),
         SizedBox(
           height: 55.h,
         ),
         Transform.scale(
           scale: 1.5.h,
           child: Image.asset(
             model.image,
             height: 242.h,
             width: 243.w,

           ),
         ),
         SizedBox(
           height: 38.h,
         ),
         model.iconButton,
         SizedBox(
           height: 38.spMin,
         ),
       ],
     );
   }
}
