part of'../../view.dart';


class _AddClientView extends StatelessWidget {
  const _AddClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormClientList()),
          const SubmitBtn()
        ],
      ),
    ),);
  }
}
