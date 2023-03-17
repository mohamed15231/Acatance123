part of 'ForgetPassPinCodeImports.dart';

class ForgetPassPinCode extends StatefulWidget {
  const ForgetPassPinCode({Key? key}) : super(key: key);

  @override
  State<ForgetPassPinCode> createState() => _ForgetPassPinCodeState();
}

class _ForgetPassPinCodeState extends State<ForgetPassPinCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        back: true,
        title: '',
        bgColor: AppColors.white,
        iconColor: AppColors.primary,
        iconSize: 20,
      ),
      body: Container(
        color: AppColors.white,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  BuildForgetPassPinCodeText(),
                  BuildForgetPassPinCode(),

                  BuildPinCodeButton(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
