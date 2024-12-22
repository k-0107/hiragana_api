import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hiragana/ui/hiragana_view.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: HiraganaPage(),
      ),
    ),
  );
}
