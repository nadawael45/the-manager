import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/router/router.dart';
import 'features/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
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
    );
  }
}


