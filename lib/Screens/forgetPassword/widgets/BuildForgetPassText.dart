part of 'ForgetPasswordWidgetsImports.dart';

class BuildForgetPassText extends StatelessWidget {
  const BuildForgetPassText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: 'Did you forget your password?',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            title: 'Please enter your email and you will receive a message with a code verification.',
            size: 14,
          ),
        ],
      ),
    );
  }
}
