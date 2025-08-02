import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/app_images.dart';
import 'package:food_go/features/payment/presentation/widgets/add_payment_bottom_sheet.dart';

class PaymentColumn extends StatefulWidget {
  const PaymentColumn({super.key});

  @override
  State<PaymentColumn> createState() => _PaymentColumnState();
}

class _PaymentColumnState extends State<PaymentColumn> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Payment Method',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        // const SizedBox(height: 20),
        // VisaContainer(
        //   color: kTextColor,
        //   titleColor: Colors.white,
        //   title: 'credit card',
        //   subtitle: '5105 **** **** 0505',
        //   imagePath: AppImages.imagesMastercard,
        //   value: 'credit',
        //   groupValue: selectedValue,
        //   onChanged: (value) {
        //     setState(() {
        //       selectedValue = value;
        //     });
        //   },
        // ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.imagesMobilepayments,
                  height: height(context) * 0.2),
              const SizedBox(height: 10),
              Text(
                'No payment method added yet',
                style: TextStyle(
                    color: Color(0xff1C140D),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text('Add a payment method to place your order.',
                  style: TextStyle(color: Color(0xff1C140D), fontSize: 15)),
              const SizedBox(height: 20),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xffF2EDE8)),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25)),
                      ),
                      isScrollControlled: true,
                      builder: (context) => const AddCardBottomSheet(),
                    );
                  },
                  child: Text(
                    'Add Payment Method',
                    style: TextStyle(color: Color(0xff1C140D)),
                  )),
              Divider(
                thickness: 5,
                color: Color(0xffF2EDE8),
                indent: 180,
                endIndent: 180,
              ),
            ],
          ),
        ),
        // Row(
        //   children: [
        //     Checkbox(
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(3)),
        //         fillColor: WidgetStatePropertyAll(kprimaryColor),
        //         value: selectedValue == 'cash',
        //         onChanged: (v) {}),
        //     Text('Save card details for future payments',
        //         style: TextStyle(color: kGreyColor, fontSize: 15))
        //   ],
        // )
      ],
    );
  }
}
