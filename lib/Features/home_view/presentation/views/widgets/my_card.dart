import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';
import 'package:responsive_dashboard/Core/utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 420 / 215,
        child: CreditCardWidget(
          padding: 0,
          isChipVisible: true,
          cardBgColor: Colors.blue,
          backgroundImage: 'assets/images/back_ground.png',
          cardType: CardType.visa,
          cardNumber: "0918 8124 0042 8129",
          expiryDate: "25/08",
          cardHolderName: "Omar Hossny Tammam",
          cvvCode: "124",
          isHolderNameVisible: true,
          showBackView: false,
          onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
        ));
  }
}
