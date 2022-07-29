import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:food_delivery/utilities/dimension.dart';

class SquareButton extends StatelessWidget {
  const SquareButton(
      {Key? key,
      required this.text,
      this.buttonColor = AppColor.buttonColorBlack,
      this.textColor = Colors.white,
      this.onTap})
      : super(key: key);

  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(Dimension.height15),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius:
                BorderRadius.all(Radius.circular(Dimension.radius10))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: Dimension.font16),
          ),
        ),
      ),
    );
  }
}
