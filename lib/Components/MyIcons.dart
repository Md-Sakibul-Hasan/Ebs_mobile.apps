import 'package:flutter/material.dart';
class MyIcon extends StatelessWidget {
  final customicon;
   MyIcon({super.key,required this.customicon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(vertical: 15) ,
      child: Container(

        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape. circle,
          color: Colors.grey.shade200,
        ),
        child: Icon(customicon,size: 25,),
      ),
    );
  }
}
