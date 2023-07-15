import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/custom_widget/container2.dart';

import '../constants/styles.dart';

class ProfileEditing extends StatelessWidget {
  const ProfileEditing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Complete your Profile", style: kTextStyle2),
          const SizedBox(height: 16),
          Container2(
            containerText: "Rank your Tennis",
          ),
          const SizedBox(height: 16),
          Container2(
            containerText: "Confirm your email address",
          ),
        ],
      ),
    );
  }
}
