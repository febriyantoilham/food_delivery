import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:food_delivery/utilities/dimension.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    Key? key,
    required this.text,
    this.buttonColor = AppColor.buttonColorBlack,
    this.textColor = Colors.white,
    this.onTap,
    this.width,
    this.font = 16,
    this.padding = 15,
  }) : super(key: key);

  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback? onTap;
  final double? width;
  final double font;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius:
                BorderRadius.all(Radius.circular(Dimension.radius10))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w600, fontSize: font),
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.image,
    this.height = 40,
    this.width = 40,
    this.onTap,
    required this.bgColor,
  }) : super(key: key);

  final ImageProvider image;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Dimension.height10 - 5),
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              shape: BoxShape.circle, image: DecorationImage(image: image)),
        ),
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    Key? key,
    required this.icon,
    this.onTap,
    this.size = 25,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback? onTap;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Dimension.height10 - 2),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 1,
            )
          ],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: size,
        ),
      ),
    );
  }
}

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({
    Key? key,
    required this.icon,
    this.onTap,
    this.boxColor = Colors.white,
    this.iconColor = Colors.black,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback? onTap;
  final Color? boxColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Dimension.height10 - 2),
        decoration: BoxDecoration(
            color: boxColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: boxColor == Colors.white ? 1 : 0,
              ),
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(
              Radius.circular(Dimension.radius5),
            )),
        child: Icon(
          icon,
          size: Dimension.height25,
          color: iconColor,
        ),
      ),
    );
  }
}
