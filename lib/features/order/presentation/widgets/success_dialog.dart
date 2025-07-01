import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/core/utils/styles.dart';
import 'package:food_go/features/home/presentation/widgets/custom_button.dart';
import 'package:food_go/features/order/presentation/widgets/done_icon.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      surfaceTintColor: Colors.white,
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      child: SizedBox(
          height: height(context) * 0.5,
          width: width(context) * 0.9,
          child: Column(
            children: [
             const   SizedBox(
                height: 20,
              ),
           const   DoneIcon(),
           const   SizedBox(
                height: 20,
              ),
              Text('Success !',
                  style: Styles.textStyle20.copyWith(
                      color: kprimaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold)),
            const  SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                " Your payment was successful.\nA receipt for this purchase has \nbeen sent to your email.",
                style: Styles.textStyle20,
              ),
           const   Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomButton(
                    wid: 0.4,
                    heig: 0.07,
                    txet: 'Go Back',
                    color: kprimaryColor,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              )
            ],
          )),
    );
  }
}
