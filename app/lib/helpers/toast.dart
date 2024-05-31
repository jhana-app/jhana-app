import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastInfo(String message) => Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: const Color(0xCCCCC2DC),
      textColor: const Color(0xff202629),
      fontSize: 16.0,
    );

void toastError(String message) => Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: const Color(0xCCF44336),
      textColor: const Color(0xffffffff),
      fontSize: 16.0,
    );
