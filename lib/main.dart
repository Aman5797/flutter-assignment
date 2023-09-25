import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/services/navigationService/navigation_service.dart';
import 'package:flutter_assignment/utils/app_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await AppPreferences().init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      child: MaterialApp.router(
        title: 'Flutter Assignment',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routerConfig: NavigationService.routerConfig,
        localizationsDelegates: const [S.delegate],
      ),
    );
  }
}
