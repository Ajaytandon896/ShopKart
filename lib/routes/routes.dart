import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRouting{
  static goToNextPage({required BuildContext context,required Widget navigateto}){
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => navigateto),
    );
}
}