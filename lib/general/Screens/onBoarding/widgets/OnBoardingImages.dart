part of 'OnBoardingWidgetsImports.dart';

class OnBoardingImages extends StatefulWidget {
  const OnBoardingImages({Key? key, required this.onBoardingData}) : super(key: key);
  final OnBoardingData onBoardingData;

  @override
  State<OnBoardingImages> createState() => _OnBoardingImagesState();
}

class _OnBoardingImagesState extends State<OnBoardingImages> {

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.onBoardingData.boardController,
      onPageChanged: (index){
        if(index == widget.onBoardingData.boarding.length-1){
          setState(() {
            widget.onBoardingData.isLast=true;
          });
          print('last');
        }else{
          setState(() {
            widget.onBoardingData.isLast=false;
          });
          print('Not last');

        }
      },
      physics: const BouncingScrollPhysics(),
      itemCount: widget.onBoardingData.boarding.length,
      itemBuilder: (context, i) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${widget.onBoardingData.boarding[i].title}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            '${widget.onBoardingData.boarding[i].image}',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height*0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
          ),
          GestureDetector(
            onTap: () {
              if(widget.onBoardingData.isLast){
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
                widget.onBoardingData.boardController
                    .nextPage(
                    duration: const Duration(
                      microseconds: 750,
                    ),
                    curve: Curves.fastLinearToSlowEaseIn
                );
              }

            },
            child: i==2
                ?Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CustomText(
                title: 'Get Started',
                color: AppColors.white,
                size: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            )
                :Image.asset(
                Res.arrow,
              height: 150.h,
            ),

          ),


        ],
      ),
    );
  }
}
