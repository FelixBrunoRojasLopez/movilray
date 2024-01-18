import 'package:flutter/material.dart';
import 'package:m_senorial/components/my_button.dart';
import 'package:m_senorial/components/my_input_Text.dart';
import 'package:m_senorial/components/my_text_center.dart';
import 'package:m_senorial/components/my_text_title.dart';
import 'package:m_senorial/components/square_icon.dart';

class Login extends StatelessWidget{
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context){
    void signUpIn() {
      Navigator.pushNamed(context, '/signup');
    }
    void ForgotPassword(){
    Navigator.pushNamed(context, '/forgetpassword');
   }

    return  Scaffold(
      body:SingleChildScrollView(child: Column(
        children: [
          const SizedBox(height: 74,),
          //Title
          const MyTextTitle(contenText: "Login In"), 
          const SizedBox(height: 112,),
          //Sub title
          const MyTextCenter(
            text: "Por favor ingrese con su cuenta existente"
            ), 
          const SizedBox(height: 112,),
          // Title form User
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  "Ingrese su email",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(100, 105, 130, 1),
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Sen',
                  ),
                  )
              ],
            ),
          ),
          const SizedBox(height: 5,),
          //input form
          MyInputText(
            controller: usernameController,
            hintText: 'example@gmail.com',
            obscureText: false), 
          const SizedBox(height: 24,),
          //Title password form
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  "Ingrese su Password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(100, 105, 130, 1),
                  ),
                  ),
              ],
              ),
          ),
          const SizedBox(height: 5,),
          // form del password
          MyInputText(
            controller: passwordController,
            hintText: "*********",
            obscureText: true
            ),
          const SizedBox(height: 30,),
          //Forgot Password
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rember me",
                  style: TextStyle(
                    color: Color.fromRGBO(126,138,151,1)
                  ),
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 145, 15, 1)
                  ),
                ), 
              ],
              ),
          ),
          const SizedBox(height: 42,),
          //Button de login
          MyButton(onTap: signUpIn,text: "Sign In"),
          const SizedBox(height: 27,),
          //Txt 
          const Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Color.fromRGBO(100, 105, 130, 1),
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  "SING UP",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 118, 34, 1),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24,),
          //txt final
          const Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or",
                  style: TextStyle(
                    color: Color.fromRGBO(100, 105, 130, 1),
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24,),
          //imagen de google
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SquareIcon(imagePath: 'lib/images/google.png')
            ],
          ),
        ],

      ),
      ),
    );
  }
}