import 'package:flutter/material.dart';
void opensnackbar(context,snackMessage,color){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: color,
    action: SnackBarAction(
      label: "OK",
      textColor: Colors.white,
      onPressed: (){},
    ),
    content: Text
    (snackMessage,
    style:TextStyle(fontSize: 14),
  ),
  )
  );

}