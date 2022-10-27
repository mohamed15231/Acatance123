part of 'ResetPasswordImports.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  ResetPasswordData resetPasswordData = ResetPasswordData();

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
                      children: [
                        const ResetPasswordImage(),
                        const ResetPasswordText(),
                        ResetPasswordForm(resetPasswordData: resetPasswordData),
                        const ResetPasswordButton(),
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
