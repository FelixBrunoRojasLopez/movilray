import 'package:flutter/material.dart';
import 'package:m_senorial/components/my_button.dart';
import 'package:m_senorial/components/my_form_text.dart';
import 'package:m_senorial/components/my_input_Text.dart';
import 'package:m_senorial/components/my_text_center.dart';
import 'package:m_senorial/components/my_text_title.dart';

class Sigup extends StatelessWidget{
  Sigup({super.key});
  final nameControlle = TextEditingController();
  final gmailControlle = TextEditingController();
  final passwordControlle = TextEditingController();
  final confirmeControlle = TextEditingController();

  void SignUp(){}
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView ( child: Column(
        children: [
          const SizedBox(height: 74,),
          //title
          const MyTextTitle(contenText: 'Sign Up'),
          const SizedBox(height: 53,),
          //Sub title
          const MyTextCenter(text: 'Por favor registrese para comenzar'),
          const SizedBox(height: 111,),
          //Form
          //Name
          const MyFormText(text: "Ingresa su nombre"),
          const SizedBox(height: 6,), 
          MyInputText(
            controller: nameControlle,
            hintText: "Mauricio Cotreras",
            obscureText: false
            ),
          const SizedBox(height: 21,),
          //Email
          const MyFormText(text: "Ingrese su Email"),
          const SizedBox(height: 6,), 

          MyInputText(
            controller: gmailControlle,
            hintText: "example@gmail.com",
            obscureText: false
            ),
          const SizedBox(height: 21,),
          //PassWord
          const MyFormText(text: "Ingrese su password"),
          const SizedBox(height: 6,), 

          MyInputText(
            controller: passwordControlle,
            hintText: "*********",
            obscureText: true
            ),
          const SizedBox(height: 21,),
          //Confirmed
          const MyFormText(text: "Confirme su password"),
          const SizedBox(height: 6,), 

          MyInputText(
            controller: confirmeControlle,
            hintText: "*************",
            obscureText: true
            ),
          const SizedBox(height: 21,),
          //Button
          MyButton(onTap: SignUp,text: 'Sign In'),
        ],
      ),
      ),
    );
  }
}