import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newwapp/features/appointments/controller.dart';
import 'package:newwapp/features/stadium/st_controller.dart';
import 'package:newwapp/features/subscription/controller.dart';
import 'features/clients/controller.dart';
import 'core/router/router.dart';
import 'features/home/view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ClientCubit()),
        BlocProvider(create: (_) => AppointmentCubit()),
        BlocProvider(create: (_) => StadiumCubit()),
        BlocProvider(create: (_) => SubscriptionCubit()),



      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) =>
         MaterialApp(
          navigatorKey: navigatorKey,
          onGenerateRoute: onGenerateRoute,
          debugShowCheckedModeBanner: false,
          home: const HomeView(),

        ),
      ),
    );
  }
}


