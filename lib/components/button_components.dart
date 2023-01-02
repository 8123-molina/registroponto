

import 'package:flutter/material.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.lightBlueAccent[300],
  minimumSize: Size(104, 44),
  padding: EdgeInsets.symmetric(horizontal: 26),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
);