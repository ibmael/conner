import 'package:conner/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/forget_password/logic/forget_password_cubit.dart';
import '../../features/auth/forget_password/ui/forget_password_screen.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/login/ui/widgets/email_and_password.dart';
import '../../features/auth/otp/logic/check_code_cubit.dart';
import '../../features/auth/otp/ui/otp.dart';
import '../../features/auth/signup/logic/sign_up_cubit.dart';
import '../../features/auth/signup/ui/signup_screen.dart';
import '../../features/onboarding/on_boarding_Screen.dart';
import '../../features/scan/scan_Screen.dart';
import '../../features/splash/splash.dart';
import '../di/dependancy_injection.dart';
import 'custom_page_route.dart';
import 'routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this
    // final argument = settings.arguments;
    switch (settings.name) {
      case Routes.splashScreen:
        return CustomPageRoute(child: const Splash());
 case Routes.onBoardingScreen:
        return CustomPageRoute(child: const OnBoardingScreen());
      case Routes.scanScreen:
        return CustomPageRoute(child: const ScanScreen());

      case Routes.signUpScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignUpScreen(),
        ));

      case Routes.loginScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ));
      case Routes.emailAndPasswordText:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const EmailAndPasswordText(),
        ));

      case Routes.forgetPasswordScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<ForgetCubit>(),
          child: const ForgetPasswordScreen(),
        ));
      case Routes.updatePasswordScreen:
        //////////////////////////type 'Null' is not a subtype of type 'String'????????
        
      case Routes.otpScreen:
        return CustomPageRoute(
            child: BlocProvider(
          create: (context) => getIt<CheckCodeCubit>(),
          child: const OtpScreen(),
        ));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
