import 'package:flutter/material.dart';

class My_TextField extends StatelessWidget {

  final _controller= TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final hinttext;
  final suficon;

   My_TextField({super.key,required this.hinttext,this.suficon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formkey,
        child: Container(
          width: 100,
          child: TextFormField(
            controller: _controller,
            decoration: InputDecoration(
                hintText: hinttext,
                suffixIcon: Icon(suficon)
              // suffixIcon: DropdownSearch()
            ),
          ),
        ),
      ),
    );
  }
}
