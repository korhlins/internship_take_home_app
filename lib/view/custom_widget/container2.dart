import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/constants/styles.dart';

class Container2 extends StatelessWidget {
  Container2({this.containerText});

  String? containerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 364,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFCFCFCF)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const SizedBox(
            width: 24,
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFFA800), width: 3),
                borderRadius: BorderRadius.circular(100)),
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            containerText!,
            style: kTextStyle.copyWith(color: Color(0xFF0E0E0E)),
          )
        ],
      ),
    );
  }
}
