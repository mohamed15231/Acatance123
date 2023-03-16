part of'OnBoardingImports.dart';

class OnBoardingData{

  PageController boardController = PageController();
  bool isLast = false;

  List<OnBoardingModel> boarding = [
    OnBoardingModel(
      id: 1,
        image: Res.onBoarding1,
        title: 'Welcome',
    ),
    OnBoardingModel(
      id: 2,
        image: Res.onBoarding2,
        title: 'New concepts',
    ),
    OnBoardingModel(
      id: 3,
        image: Res.onBoarding3,
        title: 'Innovative programs',
    ),
  ];
}