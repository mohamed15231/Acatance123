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
          CustomText(
            title: 'Most Popular',
            color: AppColors.black,
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
                CustomText(
                  title: mainScreenData.newsData[i].title,
                  color: AppColors.primary,
                  size: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  title: '3/2/2023 9:57:38 PM',
                  color: AppColors.blackOpacity,
                  size: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  title: mainScreenData.newsData[i].body,
                  color: AppColors.primary,
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
