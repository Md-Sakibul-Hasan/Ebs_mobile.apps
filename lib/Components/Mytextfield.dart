import 'package:flutter/material.dart';

class My_TextField extends StatefulWidget {

  final hinttext;
  final suficon;
  final subText;

   My_TextField({super.key,required this.hinttext,this.suficon,required this.subText});

  @override
  State<My_TextField> createState() => _My_TextFieldState();
}

class _My_TextFieldState extends State<My_TextField> {
  final _controller= TextEditingController();

  final _formkey = GlobalKey<FormState>();

  String? selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formkey,
        child: Container(
          width: 100,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                onChanged: (value){
                  selected=value;
                  setState(() {

                  });
                },
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                    hintText: widget.hinttext,
                    suffixIcon: Icon(widget.suficon)
                ),

              ),
              Visibility(
                  visible: selected==null?false:true,
                  child: Text(widget.subText)),
              SizedBox(height: 5,),
              Container(
                height: 1,
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
