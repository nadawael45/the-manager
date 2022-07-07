
part of'../../view.dart';
class AddAppointView extends StatelessWidget {
  const AddAppointView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Expanded(child: FormAppointList()),
          const SubmitAppointmentBtn(),
        ],
      ),
    ),);
  }
}
