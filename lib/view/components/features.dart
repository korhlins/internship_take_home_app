import 'package:flutter/material.dart';

import '../custom_widget/features_container.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeaturesContainer(
          containerIconPath: "images/Group 34654.png",
          containerText: "Find a nearby court",
        ),
        FeaturesContainer(
          containerIconPath: "images/Frame (2).png",
          containerText: "Challenge a Player",
        ),
        FeaturesContainer(
          containerIconPath: "images/Frame (3).png",
          containerText: "Week Score Board",
        ),
      ],
    );
  }
}
