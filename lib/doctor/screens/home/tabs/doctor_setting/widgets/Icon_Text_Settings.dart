part of 'WidgetsImports.dart';

class Icon_Text_Settings extends StatelessWidget {
  const Icon_Text_Settings({Key? key, required this.txt, required this.image, required this.onTap})
      : super(key: key);

  final String txt;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 29,
            backgroundColor:  AppColors.selectedNavBarColor,
            child:Center(
              child: Image.asset(
                  image,
                width: 20.w,
                color: Colors.white,


              ),
            ),

          ),
          SizedBox(
            width: 24.w,
          ),
          Custom_Text(
            text: txt,
            color_text: AppColors.black,
            size: 25.0.spMin,
            fontWeight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}
