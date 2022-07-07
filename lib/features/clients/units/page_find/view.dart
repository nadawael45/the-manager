
part of'../../view.dart';
class _AllClientsView extends StatelessWidget {
  const _AllClientsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        SortBy(),
        const Expanded(child: ClientsGridView()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: CustomButton(function: (){}, text: 'اجمالي ايرادات اليوم 5\nاجمالي ايرادات الشهر 100'),
        )
      ],
    ),);
  }
}
