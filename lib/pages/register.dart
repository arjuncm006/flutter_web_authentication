import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';
import 'login_page.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final email_sign_Controller = TextEditingController();
  final pass_create_Controller = TextEditingController();
  final pass_confirm_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Column(

        children: [

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 100,
                  ),
                  const Icon(
                    Icons.login_sharp,
                    size: 80,
                    color: Color(0xff502f4c),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Be a part of our family",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff502f4c),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Sign up",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                      controller: email_sign_Controller,
                      hintText: "email",
                      obsecureText: false),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: SafeArea(
                      child: Row(
                        children: [
                          Expanded(
                            child: MyTextField(
                                controller: pass_create_Controller,
                                hintText: 'create password',
                                obsecureText: true),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: MyTextField(
                                controller: pass_create_Controller,
                                hintText: 'confirm password',
                                obsecureText: true),
                          ),

                        ],


                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  MyButton(onTap: () {}, text: 'Create account'),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('have an account?'),
                      SizedBox(
                        width: 4,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Page()),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}