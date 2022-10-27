part of 'ResetPasswordWidgetsImports.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({Key? key, required this.resetPasswordData}) : super(key: key);
  final ResetPasswordData resetPasswordData;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: resetPasswordData.formKey,
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children:  [
              CustomInputFormField(
                controller: resetPasswordData.passwordController,
                hint: 'New password',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInputFormField(
                controller: resetPasswordData.passwordController,
                hint: 'Confirm new password',
              ),
            ],
          ),
        )
    );
  }
}
