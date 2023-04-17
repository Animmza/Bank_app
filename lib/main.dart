import 'package:bankapppp/res/routes/routes.dart';
import 'package:bankapppp/view/splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(DevicePreview(enabled: false, builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => GetMaterialApp(
        title: 'Bank App',
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(elevation: 0)),
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.white,
            )),
        home: Splash(),
        getPages: approutes.appRoutes(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: Size(375, 812),
    );
  }
}
