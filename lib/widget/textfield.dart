import 'package:flutter/material.dart';
import 'package:food_delivery/utilities/color.dart';
import 'package:food_delivery/utilities/dimension.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.text,
    required this.icon,
    this.textController,
  }) : super(key: key);

  final String text;
  final Icon icon;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: textController,
        style: TextStyle(fontSize: Dimension.font16),
        cursorColor: AppColor.mainColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          hintText: text,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(Dimension.radius10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black.withOpacity(0.10), width: 1),
            borderRadius: BorderRadius.circular(Dimension.radius10),
          ),
          prefixIcon: icon,
          prefixIconColor: Colors.black.withOpacity(0.25),
        ),
      ),
    );
  }
}
