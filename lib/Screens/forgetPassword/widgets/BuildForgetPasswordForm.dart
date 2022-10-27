part of 'ForgetPasswordWidgetsImports.dart';

class BuildForgetPasswordForm extends StatelessWidget {
  const BuildForgetPasswordForm({Key? key, required this.forgetPasswordData}) : super(key: key);
  final ForgetPasswordData forgetPasswordData;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: forgetPasswordData.formKey,
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children:  [
              CustomInputFormField(
                controller: forgetPasswordData.emailController,
                hint: 'Enter your email address',
              ),
            ],
          ),
        )
    );
  }
}
