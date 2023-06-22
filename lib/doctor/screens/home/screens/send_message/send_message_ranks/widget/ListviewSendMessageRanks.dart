part of 'WidgetImports.dart';
class ListviewRanks extends StatefulWidget {
  const ListviewRanks({Key? key}) : super(key: key);

  @override
  State<ListviewRanks> createState() => _ListviewRanksState();
}

class _ListviewRanksState extends State<ListviewRanks> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Doctor_Cubit,Doctor_State>(
      listener: (context, state) {

      },
      builder: (context, state) {
        var cubit=Doctor_Cubit.get(context);
        return SizedBox(
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(
              height: 20.h,
            ),
            itemBuilder: (context, index) {
              final pressAttention =
              cubit.pressedAttentionsRanks[index];
              return Container_Choice(
                containerColor: pressAttention
                    ? AppColors.white
                    : AppColors.secondary,
                textColor: pressAttention
                    ? AppColors.secondary
                    : AppColors.white,
                onTap: () {
                  setState(() {
                    cubit.rank_Id =
                    cubit.get_ranks_model!.subjects![index].id!;
                    cubit.pressedAttentionsRanks = cubit
                        .get_ranks_model!.subjects!
                        .map((e) => false)
                        .toList();
                    cubit.pressedAttentionsRanks[index] !=
                        !pressAttention
                        ? cubit.pressedAttentionsRanks[index] =
                    !pressAttention
                        : cubit.pressedAttentionsRanks[index] =
                        pressAttention;
                    print(cubit.rank_Id);
                  });
                },
                text: cubit.get_ranks_model!.subjects![index].rankName!,
              );
            },
            itemCount: cubit.get_ranks_model!.subjects!.length,
          ),
        );
      },
    );
  }
}
