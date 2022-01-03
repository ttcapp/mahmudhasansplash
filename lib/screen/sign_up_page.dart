import 'package:flutter/material.dart';
import 'package:splash/helper/custom_button.dart';
import 'package:splash/helper/custom_text_field.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}
TextEditingController _name1Controller=TextEditingController();
TextEditingController _surnameController=TextEditingController();
TextEditingController _mobileoremailController=TextEditingController();
TextEditingController _newpasswordController=TextEditingController();
class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          CustomTextField(
              hintText: "Enter your name",
              labelText: "Name",
              controller: _name1Controller,
              obsecureval: false),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
              hintText: "Enter your surname",
              labelText: "Surname",
              controller: _surnameController,
              obsecureval: false),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
              hintText: "Enter your Mobile number or email address",
              labelText: "Mobile or Email",
              controller: _mobileoremailController,
              obsecureval: true),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
              hintText: "Enter your New Password",
              labelText: "New Password",
              controller: _newpasswordController,
              obsecureval: false),
          SizedBox(
            height: 15,
          ),
           CustomButton(
               height: 60,
               width: 200,
               btnText: "Sign Up"
           )
        ],
      ),
    );
  }
}
