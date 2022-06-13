import 'package:flutter/material.dart';

Widget loadingCenterSmall() {
  return const Center(
    // heightFactor: 1,
    // widthFactor: 1,
    child: SizedBox(
      height: 16,
      width: 16,
      child: CircularProgressIndicator(
        strokeWidth: 1.5,
      ),
    ),
  );
}