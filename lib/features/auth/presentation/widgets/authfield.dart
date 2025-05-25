import 'package:blog_app/core/themes/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthField extends StatefulWidget {
  final String hintText;
  final TextEditingController textcontroller;
  final bool obstext;
  
  const AuthField({
  super.key,
  required this.hintText,
  required this.textcontroller,
  this.obstext=false
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  @override
  
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: widget.obstext,
        controller: widget.textcontroller,
        validator: (value) {
          if (value!.isEmpty){
            return "Field is Empty";
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: widget.hintText,

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color:AppPallete.borderColor,
              // style: BorderStyle.solid
              ),
              gapPadding: 1.0,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),

          focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color:AppPallete.gradient2,
              // style: BorderStyle.solid
              ),
              gapPadding: 1.0,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          
        ),
       
      ),
    );
  }
}