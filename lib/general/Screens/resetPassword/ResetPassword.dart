part of 'ResetPasswordImports.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  ResetPasswordData resetPasswordData = ResetPasswordData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        back: true,
        title: '',
        bgColor: Colors.transparent,
        iconColor: AppColors.primary,
        iconSize: 20,
      ),
      body:  Container(
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ResetPasswordText(),
              ResetPasswordForm(resetPasswordData: resetPasswordData),
              const ResetPasswordButton(),
            ],
          ),
        ),
      ),
    );
  }
}
