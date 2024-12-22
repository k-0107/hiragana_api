import 'package:flutter/material.dart';

class HiraganaViewModel {
  final TextEditingController? controller;

  const HiraganaViewModel({this.controller});

  void changeButton() {
    if (controller != null) {
      debugPrint('Current Text: ${controller!.text}');
    } else {
      debugPrint('Controller is null');
    }
  }
}
