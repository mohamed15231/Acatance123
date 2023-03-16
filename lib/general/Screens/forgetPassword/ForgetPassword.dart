part of 'ForgetPasswordImports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  ForgetPasswordData forgetPasswordData = ForgetPasswordData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        back: true,
        title: '',
        bgColor: Colors.transparent,
        iconColor: AppColors.black,
        iconSize: 18.sp,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BuildForgetPassText(),
              BuildForgetPasswordForm(forgetPasswordData: forgetPasswordData),
              const BuildForgetPasswordButton(),
            ],
          ),
        ),
      ),
    );
  }
}
