import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/constants/styles.dart';

class FeaturesContainer extends StatelessWidget {
  FeaturesContainer({this.containerIconPath, this.containerText});

  String? containerIconPath;
  String? containerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8.0,
              spreadRadius: 1,
              offset: Offset(0, 6)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(containerIconPath!),
          Text(
            containerText!,
            softWrap: true,
            textAlign: TextAlign.center,
            style: kTextStyle.copyWith(
                color: Color(0xFF363636), fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
