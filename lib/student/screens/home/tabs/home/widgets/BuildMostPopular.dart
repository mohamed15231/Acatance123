part of 'MainWidgetsImports.dart';

class BuildMostPopular extends StatelessWidget {
  const BuildMostPopular({Key? key, required this.mainScreenData})
      : super(key: key);
  final MainScreenData mainScreenData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Custom_Text(
            text: 'Most Popular',
            color_text: AppColors.black,
            size: 20.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.sp,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, i) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Custom_Text(
                  text: mainScreenData.newsData[i].title,
                  color_text: AppColors.primary,
                  size: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                Custom_Text(
                  text: '3/2/2023 9:57:38 PM',
                  color_text: AppColors.blackOpacity,
                  size: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Custom_Text(
                  text: mainScreenData.newsData[i].body,
                  color_text: AppColors.primary,
                  size: 16.sp,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Image.asset(
                  mainScreenData.newsData[i].image,
                  height: 150.h,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                const Divider(thickness: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
