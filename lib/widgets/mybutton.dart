import 'package:flutter/material.dart';
class Mybutton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;
   Mybutton({required this.color,required this.text,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
        ),
        onPressed: () {},
        child: Text(
            text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
