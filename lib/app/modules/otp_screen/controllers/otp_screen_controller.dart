import 'dart:math';

import 'package:fire_base_flutter/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OtpScreenController extends GetxController {
  TextEditingController otpValue = TextEditingController();
  late String verificationId;
  confirmation() {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpValue.text.toString());
      FirebaseAuth.instance.signInWithCredential(credential).then((val) {
        Get.offAllNamed(Routes.HOME);
      });
    } catch (error) {
      log(error.toString() as num);
    }
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
