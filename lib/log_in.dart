import 'package:flutter/material.dart';
import 'package:splash/helper/custom_button.dart';
import 'package:splash/helper/custom_text_field.dart';
import 'package:splash/screen/log_in_home_page.dart';
import 'package:splash/screen/sign_up_page.dart';
import 'package:splash/utils/all_color.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
final GlobalKey<FormState> _formKey=GlobalKey();
AllColor allColor=AllColor();
TextEditingController _emailController=TextEditingController();
TextEditingController _passController=TextEditingController();
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),

              Icon(Icons.star,
              size: 70,color: allColor.appColor,),
              SizedBox(
                height: 80,
              ),
              CustomTextField(
                hintText: "Enter your email",
                labelText: "Email",
                controller: _emailController,
                obsecureval: false,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: "Enter your password",
                labelText: "Password",
                controller: _passController,
                obsecureval: true,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                   if(_formKey.currentState!.validate())
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
                },
                child: CustomButton(
                  height: 60,
                  width: 300,
                  btnText: "LOG IN",
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                    style: TextStyle(color: allColor.appColor,fontSize: 18),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                    },
                      child: Text("Sign Up!"))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
