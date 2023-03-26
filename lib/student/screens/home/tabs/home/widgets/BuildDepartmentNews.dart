part of 'MainWidgetsImports.dart';

class BuildDepartmentNews extends StatelessWidget {
  const BuildDepartmentNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom_Text(
          text: 'Department News',
          color_text: AppColors.black,
          size: 20.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10.sp,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(bottom: 20.0.r),
            child: Row(
              children: List.generate(5, (index) =>  Container(
                width: 250.w,
                padding: EdgeInsets.only(left: 5.r),
                child: Card(
                  elevation: 10,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.r),),
                  ),
                  color: AppColors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15.0.r),
                    child: Column(
                      children: [
                        Custom_Text(
                          text: 'CS Department',
                          size: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Custom_Text(
                          text: 'offers programs of study related to computing, information technology and software design and application',
                          size: 18.sp,
                          color_text: AppColors.secondary,
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
