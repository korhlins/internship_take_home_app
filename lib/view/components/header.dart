import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/screens/notification_screen.dart';
import '../constants/styles.dart';
import '../custom_widget/notification_container.dart';
import '../screens/activity_screen.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Daniel',
              style: kTextStyle1,
            ),
            Text(
              'Good morning, enjoy your games',
              style: kTextStyle,
            ),
          ],
        ),
        Row(
          children: [
            NotificationContainer(
              containerChild: 'images/Frame (1).png',
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ActivityScreen()));
                });
              },
            ),
            const SizedBox(
              width: 9,
            ),
            NotificationContainer(
                containerChild: 'images/Frame.png',
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
                  });
                }),
          ],
        )
      ],
    );
  }
}
