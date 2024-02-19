import 'package:flutter/material.dart';
import 'package:mudad/core/design/app_image.dart';
import 'package:mudad/core/design/apple_pay.dart';
import 'package:mudad/core/design/custom_elevated_button.dart';
import 'package:mudad/core/design/custom_text.dart';
import 'package:mudad/core/design/paypal.dart';
import 'package:mudad/core/design/visa_and_mastercard.dart';
import '../core/design/Bank.dart';
import '../core/design/custom_cardboard_and_bottles.dart';
import '../core/design/custom_container_coupon.dart';
import '../core/design/custom_container_gift.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            AppImage(),
            AppButton(),
            SizedBox(
              height: 7,
            ),
            CustomText(),
            SizedBox(
              height: 27,
            ),
            VisaAndMasterCard(),
            SizedBox(
              height: 22,
            ),
            PayPal(),
            SizedBox(
              height: 22,
            ),
            CustomContainerBank(),
            SizedBox(
              height: 22,
            ),
            ApplePal(),
            SizedBox(
              height: 22,
            ),
            CustomContainerGift(),
            SizedBox(
              height: 22,
            ),
            CustomContainerCoupon(),
            SizedBox(
              height: 70,
            ),
            CustomCardBoardAndBottles(),
          ],
        ),
      ),
    );
  }
}
