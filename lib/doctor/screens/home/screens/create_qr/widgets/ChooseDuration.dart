part of 'WidgetImports.dart';

class Choose_Duration extends StatelessWidget {
  const Choose_Duration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextCreateQrScreen(
              text: 'Choose duration',
            ),
            SizedBox(
              height: 20.h,
            ),
            DropdownButton(
              iconSize: 50.0,
              value: cubit.dropDownValue.toString(),
              icon: const Icon(Icons.keyboard_arrow_down),
              items: cubit.items.map((items) {
                return DropdownMenuItem(

                  value: items.toString(),
                  child: Text("${items.toString()}  Min",
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 30,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                int intValue=int.parse(newValue!);
               cubit.changeDropDownButton(newValue: intValue);
              },
            ),


          ],
        );
      },
    );
  }
}
