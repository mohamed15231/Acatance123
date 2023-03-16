part of 'ResetPasswordWidgetsImports.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({Key? key, required this.resetPasswordData}) : super(key: key);
  final ResetPasswordData resetPasswordData;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: resetPasswordData.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            CustomInputFormField(
              controller: resetPasswordData.passwordController,
              hint: 'New password',
              image: Icon(Icons.lock,color: AppColors.blackOpacity,),
              secure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomInputFormField(
              controller: resetPasswordData.passwordController,
              hint: 'Confirm new password',
              image: Icon(Icons.lock,color: AppColors.blackOpacity,),
              secure: true,
            ),
          ],
        )
    );
  }
}
