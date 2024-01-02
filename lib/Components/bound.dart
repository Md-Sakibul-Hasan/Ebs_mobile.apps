import 'package:flutter/material.dart';

class Bound extends StatelessWidget {
  bool selected;
  final String texts;
   Bound({super.key,required this.texts,required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(25),right: Radius.circular(25)),
          border: Border.all(width:1,color: Colors.grey.shade400),
          color: selected?Colors.indigo:Colors.white,
        ),
        child: Center(child: Text(texts,style: TextStyle(color:selected?Colors.white:Colors.black),))
    );
  }
}
