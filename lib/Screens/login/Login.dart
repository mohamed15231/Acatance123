part of 'LoginImports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  LoginData loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context, state) {

        },
        builder: (context,state) {
          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      BuildAppLogo(color: AppColors.primary,),
                      BuildLoginForm(loginData: loginData),
                      const BuildForgetPassword(),
                       BuildLoginButton(loginData:loginData),
                      const BuildNotHaveAcc(),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
