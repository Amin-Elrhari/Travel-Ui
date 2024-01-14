import 'package:flutter/material.dart';


class TextFieldDecoration extends StatelessWidget {


  final Icon? prefix;
  final bool obscure;
  final String hint;
  final Color color;
  final Color focusColor;

  TextFieldDecoration({ Icon? this.prefix=null, required this.obscure, required this.hint, required this.color, required this.focusColor});
  @override
  Widget build(BuildContext context) {
    return Container(
        child:TextFormField(
          obscureText: obscure,
          decoration: InputDecoration(
            prefixIcon:prefix ,
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            fillColor: Colors.white,

            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: color,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(15),

            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: focusColor,
                    width: 2
                ),
                borderRadius: BorderRadius.circular(15)



            ),


          ),

        )
    );
  }
}




