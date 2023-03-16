part of 'LoginWidgetsImports.dart';

class BuildLoginForm extends StatelessWidget {
  const BuildLoginForm({Key? key, required this.loginData}) : super(key: key);
  final LoginData loginData;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginData.formKey,
        child: Container(
          margin: EdgeInsets.only(top: 30.r),
          child: Column(
            children:  [
              CustomInputFormField(
                controller: loginData.idController,
                hint: 'User Id',
                image: Image.asset(Res.email,color: AppColors.blackOpacity,),
                // validator: (value){
                //   if(value!.isEmpty){
                //     return "Id mustn't empty";
                //   }
                //   return null;
                // },
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomInputFormField(
                controller: loginData.passwordController,
                image: Icon(Icons.lock,color: AppColors.blackOpacity,),
                // validator: (value){
                //   if(value!.isEmpty){
                //     return "Password mustn't empty";
                //   }
                //   return null;
                // },
                secure: true,
                hint: 'Password',
              ),
            ],
          ),
        )
    );
  }
}
