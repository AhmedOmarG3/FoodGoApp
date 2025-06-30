import 'package:flutter/material.dart';
import 'package:food_go/core/utils/colors.dart';
import 'package:food_go/features/order/presentation/widgets/visa_container.dart';

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
        const SizedBox(height: 20),
        VisaContainer(
          color: kTextColor,
          titleColor: Colors.white,
          title: 'credit card',
          subtitle: '5105 **** **** 0505',
          imagePath: 'assets/images/image 14.png',
          value: 'credit',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
        const SizedBox(height: 30),
        VisaContainer(
          color: Colors.white,
          titleColor: kTextColor,
          title: 'Debit card',
          subtitle: '3566 **** **** 0505',
          imagePath: 'assets/images/image 13.png',
          value: 'debit',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                fillColor: WidgetStatePropertyAll(kprimaryColor),
                value: selectedValue == 'cash',
                onChanged: (v) {}),
            Text('Save card details for future payments',
                style: TextStyle(color: kGreyColor, fontSize: 15))
          ],
        )
      ],
    );
  }
}
