import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juice_app/nav_bar.dart';
import 'package:juice_app/page1.dart';
import 'package:juice_app/page2.dart';
import 'package:juice_app/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return ScreenUtilInit(
      designSize: Size(393, 851),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Juice App',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: Page1(),
        );
      },
    );
  }
}
