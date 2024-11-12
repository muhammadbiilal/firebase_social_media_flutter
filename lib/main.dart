import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tech_media/res/color.dart';
import 'package:tech_media/res/fonts.dart';
import 'package:tech_media/utils/routes/route_name.dart';
import 'package:tech_media/utils/routes/routes.dart';
import 'package:firebase_app_check/firebase_app_check.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.primaryMaterialColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: AppColors.whiteColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 12,
            fontFamily: AppFonts.sfProDisplayMedium,
            color: AppColors.primaryTextTextColor,
          ),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 40,
            fontFamily: AppFonts.sfProDisplayMedium,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          displayMedium: TextStyle(
            fontSize: 32,
            fontFamily: AppFonts.sfProDisplayMedium,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          displaySmall: TextStyle(
            fontSize: 28,
            fontFamily: AppFonts.sfProDisplayMedium,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w500,
            height: 1.9,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontFamily: AppFonts.sfProDisplayMedium,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          headlineSmall: TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.sfProDisplayMedium,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          titleLarge: TextStyle(
            fontSize: 17,
            fontFamily: AppFonts.sfProDisplayBold,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w700,
            height: 1.6,
          ),
          bodyLarge: TextStyle(
            fontSize: 17,
            fontFamily: AppFonts.sfProDisplayBold,
            color: AppColors.primaryTextTextColor,
            fontWeight: FontWeight.w700,
            height: 1.6,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontFamily: AppFonts.sfProDisplayRegular,
            color: AppColors.primaryTextTextColor,
            height: 1.6,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            fontFamily: AppFonts.sfProDisplayBold,
            color: AppColors.primaryTextTextColor,
            height: 2.26,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontFamily: AppFonts.sfProDisplayRegular,
            color: AppColors.primaryTextTextColor,
            height: 1.5,
          ),
        ),
      ),
      // home: const SplashScreen(),
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

// Here’s how the old properties map to the new ones:
//
// headline1 → displayLarge
// headline2 → displayMedium
// headline3 → displaySmall
// headline4 → headlineMedium
// headline5 → headlineSmall
// headline6 → titleLarge
// bodyText1 → bodyLarge
// bodyText2 → bodyMedium
// caption → bodySmall
// subtitle1 → titleMedium