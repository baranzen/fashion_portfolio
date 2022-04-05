//! AppBar
import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: const Text(
      'Fashion',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 22,
        fontFamily: 'El',
      ),
    ),
    actions: const <Widget>[
      IconButton(
        onPressed: null,
        icon: Icon(Icons.camera_alt),
        color: Colors.grey,
      ),
    ],
  );
}
