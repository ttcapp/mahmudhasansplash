import 'package:flutter/material.dart';
import 'package:splash/utils/all_color.dart';
class CustomTextField extends StatefulWidget {
  String hintText;
  String labelText;
  TextEditingController controller;
  bool obsecureval;
   CustomTextField({Key? key,
     required this.hintText,
     required this.labelText,
     required this.controller,
     required this.obsecureval,

  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}
AllColor allColor=AllColor();
class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 28.0,right: 28),
      child: TextFormField(
        obscureText: widget.obsecureval,
        controller: widget.controller,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: allColor.appColor
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: allColor.appColor
            ),
            hintText: widget.hintText,
            border: OutlineInputBorder(

                borderSide: BorderSide(
                  color: allColor.appColor,
                ),
                borderRadius: BorderRadius.circular(15)
            )
        ),
      ),
    );
  }
}
