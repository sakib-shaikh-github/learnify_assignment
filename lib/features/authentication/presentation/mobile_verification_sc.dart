import 'package:flutter/material.dart';
import 'package:learnify_assignment/features/authentication/domain/verificaton_repo.dart';

//Making it global for easier access
ValueNotifier<bool> initialState = ValueNotifier(true);
String phoneNumberEntered = '--';

class MobileVerificationScreen extends StatelessWidget {
  const MobileVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
            //Implementing State Mgnmt here
            child: ValueListenableBuilder(
          valueListenable: initialState,
          builder: (context, value, child) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //Fetching appropriate widget based on value
                children: value
                    ? AuthenticationState.enterMobileNo(context)
                    : AuthenticationState.verifyOTP(context));
          },
        )),
      ),
    );
  }
}
