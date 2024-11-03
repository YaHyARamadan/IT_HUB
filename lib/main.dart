import 'package:batu_nw/features/introducation_screen/splash_screen/view/splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/auth_screen/login_screen/view/login_screen.dart';
import 'features/introducation_screen/intro_screen/view/intro_screen.dart';

void main() {
  runApp(
   // const MyApp(),
      DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            title: 'Flutter Demo',


            // theme: ThemeData(
            //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //   useMaterial3: true,
            //   scaffoldBackgroundColor: Colors.white,
            // ),
            home: const LoginScreen(),
          );
        });
  }
}