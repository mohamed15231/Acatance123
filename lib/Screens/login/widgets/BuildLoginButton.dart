part of 'LoginWidgetsImports.dart';

class BuildLoginButton extends StatelessWidget {
  BuildLoginButton({Key? key, required this.loginData}) : super(key: key);
  LoginData loginData;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(listener: (context, state) {
      if (state is LoginSuccessState) {
        print("Done");
      }
    }, builder: (context, state) {
      return ConditionalBuilderRec(
        condition: state is! LoginLoadingState,
        builder: (context) {
          return DefaultButton(
            onTap: () {
              print("hi");
              if (loginData.formKey.currentState!.validate()) {
                print(loginData.idController.text);
                LoginCubit.get(context).getLoginData(
                    email: loginData.idController.text,
                    password: loginData.passwordController.text);
              }
            },
            margin: const EdgeInsets.symmetric(vertical: 10),
            title: 'Login',
          );
        },
        fallback: (context) => CustomCircularProgress(),
      );
    });
  }
}
