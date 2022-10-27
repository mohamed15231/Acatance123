part of'OnBoardingImports.dart';

class OnBoardingData{

  PageController boardController = PageController();
  bool isLast = false;

  List<OnBoardingModel> boarding = [
    OnBoardingModel(
        image: 'assets/images/onBoarding1.png',
        title: 'Welcome',
        body: 'Lorem ipsum dolor sit amet, consecteur adiipsing elit , sed do eiusmod tempor inciduunt  ut labore'
    ),
    OnBoardingModel(
        image: 'assets/images/onBoarding2.png',
        title: 'New concepts',
        body: 'Lorem ipsum dolor sit amet, consecteur adiipsing elit , sed do eiusmod tempor inciduunt  ut labore'
    ),
    OnBoardingModel(
        image: 'assets/images/onBoarding3.png',
        title: 'Innovative programs',
        body: 'Lorem ipsum dolor sit amet, consecteur adiipsing elit , sed do eiusmod tempor inciduunt  ut labore'
    ),
  ];
}