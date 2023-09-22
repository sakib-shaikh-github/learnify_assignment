import 'package:flutter/material.dart';
import 'package:learnify_assignment/features/authentication/domain/domain_utils.dart';
import 'package:learnify_assignment/features/authentication/presentation/mobile_verification_sc.dart';

class AuthenticationState {
  static List<Widget> enterMobileNo(BuildContext context) {
    SizedBox phoneNumberTF(BuildContext context) {
      TextEditingController textEditingController = TextEditingController();
      return SizedBox(
        width: double.maxFinite,
        height: 50,
        child: TextField(
          controller: textEditingController,
          onChanged: (value) {
            phoneNumberEntered = (value);
          },
          decoration: InputDecoration(
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("91+"), Icon(Icons.arrow_drop_down_rounded)],
                ),
              ),
              contentPadding: const EdgeInsets.only(top: 18),
              fillColor: Theme.of(context).colorScheme.surface,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              hintText: "Mobile Number"),
        ),
      );
    }

    SizedBox verifyButton(BuildContext context) {
      return SizedBox(
          width: double.maxFinite,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                initialState.value = false;
              },
              child: const Text('Get OTP')));
    }

    return [
      Text(
        "Login",
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      Image.asset(
        'assets/login_sc_img.png',
        width: 300,
        height: 300,
      ),
      phoneNumberTF(context),
      verifyButton(context),
      const Text(
        'By signing up, you agree with our terms and conditions.',
        textAlign: TextAlign.center,
      )
    ];
  }

  static List<Widget> verifyOTP(BuildContext context) {
    SizedBox enterOTP() {
      return SizedBox(
          width: double.maxFinite,
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: 50,
                  child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)))),
                ),
              );
            },
          ));
    }

    SizedBox verifyButton(BuildContext context) {
      return SizedBox(
          width: double.maxFinite,
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(CustomSnackBar.snackBar);
              },
              child: const Text('Verify OTP')));
    }

    return [
      Row(
        children: [
          IconButton(
              onPressed: () {
                phoneNumberEntered = '--';
                initialState.value = true;
              },
              icon: const Icon(Icons.arrow_back_rounded)),
          const SizedBox(
            width: 60,
          ),
          Text(
            "OTP Verify",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
      Image.asset(
        'assets/login_sc_img.png',
        width: 300,
        height: 300,
      ),
      Text(
        "OTP is sent to $phoneNumberEntered",
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
      enterOTP(),
      verifyButton(context),
      const Text(
        'By signing up, you agree with our terms and conditions.',
        textAlign: TextAlign.center,
      )
    ];
  }
}
