import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/constants/styles.dart';

class TennisQuote extends StatelessWidget {
  TennisQuote({this.header, this.quote});

  String? quote;
  String? header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header!,
            style: kTextStyle2.copyWith(color: const Color(0xFF0E0E0E)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            height: 133,
            width: 364,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: const Color(
                    0xFFFFA800,
                  ),
                )),
            child: Text(
              quote!,
              style: kTextStyle.copyWith(color: const Color(0xFF5E5E5E)),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
