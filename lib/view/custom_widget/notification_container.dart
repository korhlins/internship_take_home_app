import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  NotificationContainer({this.containerChild, this.onTap});

  final String? containerChild;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Image.asset(containerChild!),
      ),
    );
  }
}
