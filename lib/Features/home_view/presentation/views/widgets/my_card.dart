import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/Core/utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: CreditCardWidget(
        customCardTypeIcons: [
          CustomCardTypeIcon(
            cardType: CardType.mastercard,
            cardImage: SizedBox(),
          )
        ],
        cardType: CardType.mastercard,
        cardBgColor: Color(0xff4EB7F2),
        backgroundImage: 'assets/images/back_ground.png',
        cardNumber: '0918 8124 0042 8129',
        expiryDate: '12/20',
        cardHolderName: 'Omar Hossny Tammam',
        cvvCode: '124',
        showBackView: true, //true when you want to show cvv(back) view
        onCreditCardWidgetChange: (CreditCardBrand
            brand) {}, // Callback for anytime credit card brand is changed
      ),
    );
  }
}
