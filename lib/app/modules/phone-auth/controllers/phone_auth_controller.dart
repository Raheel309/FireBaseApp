import 'package:fire_base_flutter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PhoneAuthController extends GetxController {
  TextEditingController phone = TextEditingController();
  fireBaseOtp() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException ex) {},
      codeSent: (String verificationId, int? resendToken) {
        Get.toNamed(Routes.OTP_SCREEN);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const OtpScreenView(),
        //   ),
        // );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      phoneNumber: phone.text.toString(),
    );
  }

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
