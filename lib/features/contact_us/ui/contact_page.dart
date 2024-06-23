import 'package:conner/core/di/dependancy_injection.dart';
import 'package:conner/core/helper/spacing.dart';
import 'package:conner/features/contact_us/logic/cubit/contact_us_cubit.dart';
import 'package:conner/features/contact_us/ui/widgets/contact_us_bk_image.dart';
import 'package:conner/features/contact_us/ui/widgets/contact_us_text_Form_Field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/contact_us_bloc_listener.dart';
import 'widgets/contact_us_button.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => ContactUsCubit(getIt()),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 400,
                        height: 120,
                        child: CustomPaint(
                          painter: RPSCustomPainter(),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(48),
                        child: Center(
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 42,
                              fontFamily: 'ElMessiri',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(100),
                  const ContactUsTextField(),
                  verticalSpace(15),
                  const ContactUsButton(),
                  const ContactUsBlocListener(),
                  const Spacer(), // This will push the bottom Stack to the end
                  Stack(
                    children: [
                      CustomPaint(
                        size: const Size(double.infinity, 245),
                        painter: RPSCustomPainter1(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
