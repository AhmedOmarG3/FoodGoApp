import 'package:flutter/material.dart';
import 'package:food_go/core/constants/constants.dart';
import 'package:food_go/features/home/presentation/widgets/custom_profile_button.dart';
import 'package:food_go/features/home/presentation/widgets/custom_profile_passwoed_textfield.dart';
import 'package:food_go/features/home/presentation/widgets/custom_profile_row.dart';
import 'package:food_go/features/home/presentation/widgets/custom_profile_text_field.dart';

class ProfileContainerBody extends StatelessWidget {
  const ProfileContainerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) * 0.8,
      width: width(context),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child:const Column(children: [
        SizedBox(
          height: 100,
        ),
        CustomProfileTextField(
          text: ' Name',
        ),
        CustomProfileTextField(
          text: 'Email',
        ),
        CustomProfileTextField(
          text: 'Delivery Address',
        ),
        CustomPasswordTextField(),
        Divider(
          color: Color(0xffE8E8E8),
          endIndent: 20,
          indent: 20,
          height: 40,
        ),
        CustomProfileRow(
          text: 'Payment Details',
        ),
        CustomProfileRow(
          text: 'Order history',
        ),
        Spacer(),
        Padding(
          padding:  EdgeInsets.only(left: 10, bottom: 30, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomProfileButton(
                text: 'Edit Profile',
                icon: Icons.edit,
                color: Color(0xFF3C2F2F),
                borderColor: Color(0xFF3C2F2F),
                textColor: Colors.white,
              ),
              CustomProfileButton(
                text: 'Log out',
                icon: Icons.logout_rounded,
                color: Colors.white,
                borderColor: Colors.red,
                textColor: Colors.red,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
