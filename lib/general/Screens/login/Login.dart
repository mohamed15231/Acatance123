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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: ()=>Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios,color: AppColors.black,),
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      BuildLoginText(),
                      BuildLoginForm(loginData: loginData),
                      const BuildForgetPassword(),
                       BuildLoginButton(loginData:loginData),
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
