import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text1;
  final String text2;
  MyText({super.key,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(

          text1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          text2,
          style: TextStyle(color: Colors.grey,fontSize: 12),
        )
      ],
    );
  }
}
