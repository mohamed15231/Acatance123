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
          var type = GlobalState.instance.get('type');
          return DefaultButton(
            onTap: () {
              print("hi");
              if (loginData.formKey.currentState!.validate()) {
                print(loginData.idController.text);
                LoginCubit.get(context).getLoginData(
                    email: loginData.idController.text,
                    password: loginData.passwordController.text);
                if(type==0){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_)=>Home(),),
                  );
                }
              }
            },
            width: 200.w,
            margin: EdgeInsets.symmetric(vertical: 20.r),
            title: 'Login',
            textSize: 18.sp,
          );
        },
        fallback: (context) => CustomCircularProgress(),
      );
    });
  }
}
