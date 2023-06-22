part of 'WidgetImports.dart';

class Button_Send_Message extends StatelessWidget {
  const Button_Send_Message({Key? key, required this.onTap,}) : super(key: key);
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      text: "Send message",
      onPressed: onTap,
    );
  }
}
