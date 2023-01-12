

import 'package:flutter/material.dart';
import 'package:registroponto/commons/const/colors_const.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: corPrimary,
  minimumSize: const Size(104, 44),
  padding: const EdgeInsets.symmetric(horizontal: 26),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
);