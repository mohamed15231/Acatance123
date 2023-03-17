part of 'LoginImports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  LoginData loginData = LoginData();
  var type = GlobalState.instance.get('type');
  FlutterToast _flutterToast=FlutterToast();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            CacheHelper.saveData(key: ConstantValue.token, value: LoginCubit.get(context).loginModel!.data!.token);
            if(type==0){
              Navigator_And_Replace.navigate(context: context, page: Student_Home());

            }else{
              Navigator_And_Replace.navigate(context: context, page: Doctor_Home());


            }

          }
          if(state is LoginErrorState){
            _flutterToast.toastShow(text: "Your data is not correct", state: ToastState.ERROR);
          }


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
            body: ConditionalBuilderRec(
              condition: state is LoginLoadingState,
              builder: (context) => Animation_loader(),
              fallback: (context) => Center(
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
            ),
          );
        }
      ),
    );
  }
}
