import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  const My_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(60),
        decoration: BoxDecoration(
            color: Colors.indigo, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            'Save',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15
            ),
          ),
        ),

      ),
    );
  }
}
