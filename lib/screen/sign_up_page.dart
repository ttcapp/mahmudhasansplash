import 'package:flutter/material.dart';
import 'package:splash/helper/custom_button.dart';
import 'package:splash/helper/custom_text_field.dart';
import 'package:splash/log_in.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}
final GlobalKey<FormState> _formkey=GlobalKey();
TextEditingController _mobileoremailController=TextEditingController();
TextEditingController _confirmpassController=TextEditingController();
TextEditingController _passController=TextEditingController();
class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),


              CustomTextField(
                  hintText: "Enter your email ",
                  labelText: "Email",
                  controller: _mobileoremailController,
                  obsecureval: false),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                  hintText: "Enter your Password",
                  labelText: "Password",
                  controller: _passController,
                  obsecureval: true),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                  hintText: "Re-enter your New Password",
                  labelText: "Confirm Password",
                  controller: _confirmpassController,
                  obsecureval: true),
              SizedBox(
                height: 15,
              ),
               InkWell(
                 onTap: (){
                   if(_formkey.currentState!.validate())
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                 },
                 child: CustomButton(
                     height: 60,
                     width: 200,
                     btnText: "Sign Up"
                 ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
