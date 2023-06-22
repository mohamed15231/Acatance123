// part of 'onBoardingImports.dart';

part of 'onBoardingImports.dart';

class On_Boarding_Data {
  static PageController indicatorPageController = PageController();
   List<On_Board_Model> boarding = [
    On_Board_Model(
      title: "assets/images/Group 4.png",
      image: Res.onBoarding1,
      iconButton: Custom_Button_OnBoarding(),
    ),
    On_Board_Model(
      title: "assets/images/Group 5.png",
      image: Res.onBoarding2,
      iconButton: Custom_Button_OnBoarding(),
    ),
    On_Board_Model(
      title: "assets/images/Group 6.png",
      image: Res.onBoarding3,
      iconButton: Last_Button_OnBoarding(),
    ),
  ];

}
