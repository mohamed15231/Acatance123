part of 'MainImports.dart';

class MainScreenData {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  DateTime date = DateTime.now();

  List<NewsModel> newsData = [
    NewsModel(
      title: 'برمجة',
      body: 'البرمجة هي أفضل شيء في حياتي',
      image: Res.onBoarding1,
    ),
    NewsModel(
      title: 'التعليم',
      body: 'التعليم هي أفضل شيء في حياتي',
      image: Res.onBoarding3,
    ),
    NewsModel(
      title: 'التعليم',
      body: 'التعليم هي أفضل شيء في حياتي',
      image: Res.onBoarding2,
    ),
    NewsModel(
      title: 'التعليم',
      body: 'التعليم هي أفضل شيء في حياتي',
      image: Res.logo,
    ),
    NewsModel(
      title: 'التعليم',
      body: 'التعليم هي أفضل شيء في حياتي',
      image: Res.selectType,
    ),
    NewsModel(
      title: 'التعليم',
      body: 'التعليم هي أفضل شيء في حياتي',
      image: Res.onBoarding3,
    ),
  ];
}
