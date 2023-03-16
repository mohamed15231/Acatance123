part of 'OnBoardingImports.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  
  OnBoardingData onBoardingData = OnBoardingData();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed:(){
              CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
                if(value){
                  // context.router.push(const Login());
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const SelectUser(),
                    ),
                  );
                }
              });
            },
              child: CustomText(
                title: 'Skip',
                fontWeight: FontWeight.bold,
                size: 18,
                color: AppColors.blackOpacity,
                decoration: TextDecoration.underline,

              ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: OnBoardingImages(onBoardingData: onBoardingData,),
            ),
            OnBoardingIndicator(onBoardingData: onBoardingData)
          ],
        ),
      ),
    );
  }
}
