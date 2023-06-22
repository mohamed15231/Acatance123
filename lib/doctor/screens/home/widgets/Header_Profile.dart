part of 'WidgetsImports.dart';
class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.blue,
        ),
        SizedBox(
          width: 16.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_Text(
              text: "abcd123@gmail.com",
              color_text: AppColors.black,
              size: 20.r,
              fontWeight: FontWeight.w400,
            ),
            Custom_Text(
              text: "Doctor",
              color_text: AppColors.steelBlue,
              size: 20.r,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ],
    );
  }
}
