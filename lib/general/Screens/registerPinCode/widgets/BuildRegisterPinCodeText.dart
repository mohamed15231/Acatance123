part of 'RegisterPinCodeWidgetsImports.dart';

class BuildRegisterPinCodeText extends StatelessWidget {
  const BuildRegisterPinCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Custom_Text(
            text: 'Enter OTP',
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Custom_Text(
            text: 'a 4 digit code has been sent to (email/mobile number).',
            size: 14,
          ),
        ],
      ),
    );
  }
}
