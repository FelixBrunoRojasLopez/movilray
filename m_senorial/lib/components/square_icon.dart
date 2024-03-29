import 'package:flutter/material.dart';

class SquareIcon extends StatelessWidget{
  final String imagePath;
  const SquareIcon({super.key, required this.imagePath});

  @override
  Widget build (BuildContext context){
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color:Colors.black),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(imagePath,height: 40,),
    );
  }
}