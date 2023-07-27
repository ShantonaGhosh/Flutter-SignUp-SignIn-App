import 'package:e_commerce_app/widget/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 30),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                'Sign In ',
                textAlign: TextAlign.center,
                style: customTextStyle(size: 22, fw: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height: 50),
              TextFormField(
                obscureText: isPasswordVisible,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your mail',
                    suffixIcon: Icon(Icons.email)),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'Please enter your mail';
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                obscureText: !isPasswordVisible,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'Please enter your password';
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAllNamed("/signUp");
                },
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text('Sign Up?'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 30,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) ;

                    print('validate');
                    Get.offNamed("/home");
                  },
                  child: Text(
                    'Sign In',
                    style: customTextStyle(size: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
