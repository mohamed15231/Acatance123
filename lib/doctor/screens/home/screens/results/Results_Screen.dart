part of 'Results_Imports.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body:ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: BuildResultContainer(),
          );
        },
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(
          height: 10.h,
        ),

      )
    );
  }
}
