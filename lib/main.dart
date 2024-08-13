import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Const/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'onBording_page/Layout_4/slider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: ' Spiice App',
          theme: ThemeData(
            primarySwatch: Colors.grey,
            primaryColor: buttonText,
          ),
          home: const ChangePage(),
          // home: Login(),
        );
      },
    );
  }
}
