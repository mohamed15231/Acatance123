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
    return ConditionalBuilderRec(
      condition: type==2,
      builder: (BuildContext context) {
        return BlocConsumer<Student_Cubit
        ,StudentState>(
            listener: (context, state) {
              if (state is LoginSuccessState) {
                if(type==Student_Cubit.get(context).loginModel!.data!.type){
                  CacheHelper.saveData(key: ConstantValue.token, value: Student_Cubit.get(context).loginModel!.data!.token);
                  tokenValue=Student_Cubit.get(context).loginModel!.data!.token;
                  CacheHelper.saveData(key: ConstantValue.idConstant, value: Student_Cubit.get(context).loginModel!.data!.id);
                  idValue=Student_Cubit.get(context).loginModel!.data!.id;
                  CacheHelper.saveData(key: ConstantValue.typeConstant, value: Student_Cubit.get(context).loginModel!.data!.type);
                  typeValue=Student_Cubit.get(context).loginModel!.data!.type;
                  Navigator_And_Replace.navigate(context: context, page: Student_Home());

                }else{
                  _flutterToast.toastShow(text: "Your Type is not correct", state: ToastState.ERROR);
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
                            BuildLoginButton(loginData:loginData,type:type ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
        );
      },
      fallback: (context) {
        return BlocConsumer<Doctor_Cubit
        ,Doctor_State>(
            listener: (context, state) {
              if (state is LoginSuccessDoctorState) {
                if(type==Doctor_Cubit.get(context).loginModel!.data!.type){
                  CacheHelper.saveData(key: ConstantValue.token, value: Doctor_Cubit.get(context).loginModel!.data!.token);
                  tokenValue=Doctor_Cubit.get(context).loginModel!.data!.token;
                  CacheHelper.saveData(key: ConstantValue.idConstant, value: Doctor_Cubit.get(context).loginModel!.data!.id);
                  idValue= Doctor_Cubit.get(context).loginModel!.data!.id;
                  CacheHelper.saveData(key: ConstantValue.typeConstant, value: Doctor_Cubit.get(context).loginModel!.data!.type);
                  typeValue= Doctor_Cubit.get(context).loginModel!.data!.type;
                  Doctor_Cubit.get(context).getNews();
                  Doctor_Cubit.get(context).getDepartment();
                  Navigator_And_Replace.navigate(context: context, page: Doctor_Home());
                }else{

                  _flutterToast.toastShow(text: "Your Type is not correct", state: ToastState.ERROR);
                }
              }
              if(state is LoginErrorDoctorState){
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
                  condition: state is LoginLoadingState||state is LoginLoadingDoctorState,
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
                            BuildLoginButton(loginData:loginData,type:type ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
        );
      },
    );
  }
}
