part of 'WidgetsImports.dart';
class BuildResultContainer extends StatelessWidget {
  const BuildResultContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 100.h,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 30,
            offset: Offset(0, 8),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Custom_Text(
                  text: 'Ahmed Mahmoud ',
                  size: 20.r,
                  color_text:Colors.black ,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 8),
                Custom_Text(
                  text: '10/10',
                  color_text: AppColors.labelTextField,
                  size: 18.r,
                  fontWeight: FontWeight.w400,

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
