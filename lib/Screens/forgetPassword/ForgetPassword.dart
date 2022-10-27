part of 'ForgetPasswordImports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  ForgetPasswordData forgetPasswordData = ForgetPasswordData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        back: true,
        title: '',
        bgColor: AppColors.white,
        iconColor: AppColors.primary,
        iconSize: 20,
      ),
      body: Container(
        color: AppColors.white,
        child: CustomScrollView(
          slivers:
          [
            SliverList(delegate: SliverChildListDelegate(
                [
                  Container(
                    color: AppColors.white,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const BuildForgetPassImage(),
                        const BuildForgetPassText(),
                        BuildForgetPasswordForm(forgetPasswordData: forgetPasswordData),
                        const BuildForgetPasswordButton(),
                      ],
                    ),
                  )
                ]
            ))
          ],
        ),
      ),
    );
  }
}
