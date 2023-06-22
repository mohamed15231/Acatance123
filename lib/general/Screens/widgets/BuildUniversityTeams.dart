part of 'Widgets_Imports.dart';
class BuildUniversityTeams extends StatelessWidget {
  const BuildUniversityTeams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Custom_Text(
            text: 'University Teams',
            color_text: AppColors.black,
            size: 20.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.sp,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1/1.7
              ),
              itemBuilder: (context,i)=>Column(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: AppColors.primary,
                  ),
                  SizedBox(
                    height: 5.sp,
                  ),
                  Custom_Text(
                    text: 'Enter',
                    fontWeight: FontWeight.bold,
                    size: 16.sp,
                  ),
                ],
              ),
          )

        ],
      ),
    );
  }
}
