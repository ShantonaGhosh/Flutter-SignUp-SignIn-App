import 'package:e_commerce_app/widget/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 30),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                'Sign Up Account',
                textAlign: TextAlign.center,
                style: customTextStyle(size: 18, fw: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Complete the form below sign up an account',
                textAlign: TextAlign.center,
                style: customTextStyle(size: 14),
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
                height: 30,
              ),
              TextFormField(
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Confirm password',
                  hintText: 'Enter your Confirm password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(Icons.lock),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'Please enter your Confirm Password';
                  }
                  if (value != password) {
                    return 'Both password should be same';
                  }

                  return null;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                width: 30,
                child: ElevatedButton(
                  onPressed: () {
                    //if (_formKey.currentState!.validate()) ;

                    // print('validate');
                    Get.back();
                  },
                  child: Text(
                    'Sign Up',
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
