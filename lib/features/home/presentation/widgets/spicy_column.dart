import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/core/utils/colors.dart';

class SpicyColumn extends StatefulWidget {
  const SpicyColumn({
    super.key,
  });

  @override
  State<SpicyColumn> createState() => _SpicyColumnState();
}

double value = 1;

class _SpicyColumnState extends State<SpicyColumn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context) * 0.4,
      child: Column(
        children: [
          const Text(
            'Spicy',
            style: TextStyle(
                fontSize: 14, color: kTextColor, fontWeight: FontWeight.bold),
          ),
          Slider(
            activeColor: kprimaryColor,
            label: value.toString(),
            value: value,
            min: 1,
            max: 5,
            divisions: 5,
            onChanged: (double v) {
              setState(() {
                value = v;
              });
            },
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Mid',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: width(context) * 0.23,
              ),
              const Text(
                'Hot',
                style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
