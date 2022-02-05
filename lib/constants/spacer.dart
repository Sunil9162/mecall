import 'package:flutter/material.dart';

double defaultSpace = 10;

Widget heightSpace(double space) {
  return SizedBox(
    height: space == 0 ? defaultSpace : space,
  );
}

Widget widthSpace(double space) {
  return SizedBox(
    width: space == 0 ? defaultSpace : space,
  );
}
