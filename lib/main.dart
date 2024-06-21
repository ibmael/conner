import 'package:conner/conner_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependancy_injection.dart';
import 'core/helper/simple_bloc_observer.dart';
import 'core/routing/app_router.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    Phoenix(
      child: ConnerApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
