part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  BuildLoginButton({Key? key, required this.loginData, required this.type})
      : super(key: key);
  LoginData loginData;
  var type;

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onPressed: () {
        if (loginData.formKey.currentState!.validate()) {
          type == 1
              ? Doctor_Cubit.get(context).getLoginData(
                  email: loginData.idController.text,
                  password: loginData.passwordController.text)
              : Student_Cubit.get(context).getLoginData(
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
