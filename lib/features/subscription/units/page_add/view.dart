part of'../../view.dart';

class _AddSubscriptionView extends StatelessWidget {
  const _AddSubscriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child:
          FormSubList()),
          const SubmitSubscriptionBtn(),
        ],
      ),
    ),);
  }
}
