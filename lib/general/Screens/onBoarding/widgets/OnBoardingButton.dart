part of 'OnBoardingWidgetsImports.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key, required this.onBoardingData})
      : super(key: key);
  final OnBoardingData onBoardingData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(onBoardingData.isLast){
          CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
            if(value){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>const SelectUser(),
                ),
              );
            }
          });
        }else{
          onBoardingData.boardController
              .nextPage(
              duration: const Duration(
                microseconds: 750,
              ),
              curve: Curves.fastLinearToSlowEaseIn
          );
        }

      },
      child: onBoardingData.isLast==false?Image.asset(
          Res.arrow
      ):Text('data'),

    );
  }
}
