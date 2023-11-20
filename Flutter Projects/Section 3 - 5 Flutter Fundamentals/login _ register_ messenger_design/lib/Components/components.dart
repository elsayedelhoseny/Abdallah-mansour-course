import 'package:flutter/material.dart';

Widget CustomButton({
  double width = double.infinity,
  double height = 40.0,
  Color background = Colors.blue,
  double radius = 15.0,
  required String text,
  required VoidCallback function,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: function,
      ),
    );

Widget Customformfaild({
  required TextEditingController controller,
  required String? validate(String? value),
  required TextInputType type,
  required Widget prefix,
  Widget? suffix,
  required String labeltext,
  bool obscureText = false,
  VoidCallback? suffixIcon,
  VoidCallback? onTap,
  bool isclucdor = true,
}) =>
    TextFormField(
      controller: controller,
      validator: validate,
      enabled: isclucdor,
      onTap:onTap ,
      obscureText: obscureText,
      keyboardType: type,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
            )),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
          
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: prefix,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixIcon,
                icon: Icon(Icons.remove_red_eye, ))
            : null,
        labelText: labeltext,
        labelStyle: TextStyle(
         
        ),
      ),
    );    