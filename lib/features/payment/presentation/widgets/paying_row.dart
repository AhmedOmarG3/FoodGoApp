import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/widgets/custom_button.dart';
import 'package:food_go/features/payment/presentation/widgets/success_dialog.dart';

class PayingRow extends StatelessWidget {
  const PayingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IntrinsicHeight(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Total Price ',
                  style: Styles.textStyle20.copyWith(
                      color: kGreyColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              Row(
                children: [
                  Text('\$',
                      style: Styles.textStyle20.copyWith(
                          color: kprimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                  Text('18.19',
                      style: Styles.textStyle20.copyWith(
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25)),
                ],
              ),
            ]),
          ),
          CustomButton(
              wid: 0.4,
              heig: 0.07,
              txet: 'Pay Now',
              color: kTextColor,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SuccessDialog(
                    buttonTitle: 'Go Back',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title:" Your payment was successful.\nA receipt for this purchase has \nbeen sent to your email.",
                  ),
                );
              })
        ],
      ),
    );
  }
}
