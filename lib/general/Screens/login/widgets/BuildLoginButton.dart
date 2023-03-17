part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  BuildLoginButton({Key? key, required this.loginData}) : super(key: key);
  LoginData loginData;

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: () {
        if (loginData.formKey.currentState!.validate()) {
          print(loginData.idController.text);
          LoginCubit.get(context).getLoginData(
              email: loginData.idController.text,
              password: loginData.passwordController.text);
        }
      },
      width: 200.w,
      margin: EdgeInsets.symmetric(vertical: 20.r),
      text: 'Login',
      textSize: 18.sp,
    );
  }
}
