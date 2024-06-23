import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class ConnerApp extends StatelessWidget {
  final AppRouter appRouter;
  final String? token;

  const ConnerApp({super.key, required this.appRouter, this.token});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // systemNavigationBarColor: Colors.black,
      ),
    );
    
    return ScreenUtilInit(
      designSize: const Size(375, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: token != null && token != ""
            ? Routes.scanScreen
            : Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
