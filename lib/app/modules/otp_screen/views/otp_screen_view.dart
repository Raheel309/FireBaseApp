import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_screen_controller.dart';

class OtpScreenView extends GetView<OtpScreenController> {
  const OtpScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OtpScreenController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('OtpScreenView'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: TextField(
                  controller: controller.otpValue,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Opt",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Confirm"),
              ),
            ],
          ),
        );
      },
    );
  }
}
