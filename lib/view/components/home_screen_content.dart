import 'package:flutter/material.dart';
import 'package:internship_take_home_app/view/components/complete_your_profile_section.dart';
import 'package:internship_take_home_app/view/components/features.dart';
import 'package:internship_take_home_app/view/components/header.dart';
import 'package:internship_take_home_app/view/components/tennis_quote.dart';
import 'package:internship_take_home_app/view/screens/home_screen.dart';

class HomeScreenContent extends StatefulWidget {
  HomeScreenContent({this.onTap});
  Function()? onTap;

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: widget.onTap!,
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(top: 88, right: 32, left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: 364,
                    height: 140,
                    child: Image.asset('images/Switch Club.png'),
                  ),
                  const Features(),
                  const ProfileEditing(),
                  TennisQuote(
                    quote:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fermentum vestibulum proin nunc nisl. Urna eget vestibulum porttitor. - The Writer",
                    header: "Tennis Quote",
                  ),
                ],
              ),
            ))));
  }
}
