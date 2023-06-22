
part of 'Widgets_Imports.dart';

class BuildMostPopular extends StatelessWidget {
  const BuildMostPopular({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);
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
                itemCount: cubit.news_model!.news.length,
                itemBuilder: (context, i) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Custom_Text(
                      text: cubit.news_model!.news[i].title!,
                      color_text: AppColors.primary,
                      size: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Custom_Text(
                      text: cubit.news_model!.news[i].createTime!,
                      color_text: AppColors.blackOpacity,
                      size: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Custom_Text(
                      text: cubit.news_model!.news[i].body!,
                      color_text: AppColors.primary,
                      size: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Image.memory(
                      base64Decode(cubit.news_model!.news[i].image!),
                      height: 150.h,
                      width: double.infinity,
                      // fit: BoxFit.fill,
                    ),
                    const Divider(thickness: 1),
                  ],
                ),
              ),
            ],
          ),
        );

      },
    );
  }
}
