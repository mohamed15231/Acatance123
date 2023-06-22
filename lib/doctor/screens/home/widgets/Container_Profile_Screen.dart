part of 'WidgetsImports.dart';
class Container_Profile_Screen extends StatelessWidget {
  const Container_Profile_Screen({Key? key, required this.text, required this.containerColor, required this.onPressed,}) : super(key: key);
  final String text;
  final Color containerColor;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 190.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color:containerColor,
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Custom_Text(
            text: text,
            align: TextAlign.center,
            size: 23.r,
          ),
          SizedBox(height: 30.w),
          Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: AppColors.white, shape: BoxShape.circle),
              child: IconButton(
                  onPressed:onPressed,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.colorArrowIcon,
                  )
              )),
        ],
      ),
    );
  }
  }
