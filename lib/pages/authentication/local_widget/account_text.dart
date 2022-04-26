import 'package:flutter/material.dart'
import 'package:meditation/constant/color.dart';
import 'package:meditation_app/constant/color.dart';
import 'package:meditation_design/constant/color.dart';
import 'package:meditation_yoga/constant/color.dart';

class AccountText extends StatelessWidget {
  const AccountText({
    required key,
    required this.screenSize,
    required this.text,
    required this.page,
    required this.buttonTap,
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final String page;
  final Function buttonTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      width: screenSize.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              text,
              style: const TextStyle(color: greyTextColor),
            ),
            padding: const EdgeInsets.only(right: 5.0),
          ),
          GestureDetector(
            onTap: buttonTap,
            child: Text(
              page,
              style: const TextStyle(
                color: purpleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class required {
}
