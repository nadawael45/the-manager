part of'../../view.dart';
class _AddStadiumView extends StatelessWidget {
  const _AddStadiumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormStadiumList()),
          const SubmitStadiumBtn(),
        ],
      ),
    ),);
  }
}
