part of 'RegisterPinCodeImports.dart';

class RegisterPinCode extends StatelessWidget {
  const RegisterPinCode({Key? key}) : super(key: key);

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
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        BuildRegisterPinCodeImage(),
                        BuildRegisterPinCodeText(),
                        BuildRegisterPinCode(),

                        BuildRegisterPinCodeButton(),


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
