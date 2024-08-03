import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/phone_auth_controller.dart';

class PhoneAuthView extends GetView<PhoneAuthController> {
  const PhoneAuthView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PhoneAuthController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Sign Up'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: controller.phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter phone number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.fireBaseOtp();
                    },
                    child: const Text("Get OTP"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
