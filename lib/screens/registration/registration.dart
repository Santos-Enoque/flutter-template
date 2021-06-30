import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/home/home.dart';
import 'package:flutter_template_project/screens/login/login.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {

Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(24),
          child: ListView(
            children: [
              SizedBox(height: _width / 8,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Register",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  CustomText(
                    text: "Hello there!",
                    color: lightGrey,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
                 TextField(
                decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Santos Enoque",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "abc@domain.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "123",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
               SizedBox(
                height: 15,
              ),
            
                SizedBox(
                height: 15,
              ),
              CustomButton(
                onTap: (){
                  Get.offAll(HomeScreen());

                },
                title: "Register",
              ),

               SizedBox(
                height: 15,
              ),

              GestureDetector(
                onTap: (){
                  Get.offAll(LoginScreen());
                },
                child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Already have an account? ", style: TextStyle(color: Colors.black)),
                    TextSpan(text: "Log in! ", style: TextStyle(color: active))
                  ]
                )),
              )

            ],
          ),
        ),
    );
  }
}