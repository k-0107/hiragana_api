import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hiragana/view_model/hiragana_view_model.dart';

class HiraganaPage extends ConsumerWidget {
  HiraganaPage({super.key});
  final controller = TextEditingController();
  final viewModel = HiraganaViewModel(controller: TextEditingController());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ひらがな変換器"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '文章を入力してね',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                viewModel.controller?.text = controller.text;
                viewModel.changeButton();
              },
              child: Text("変換"),
            ),
          ],
        ),
      ),
    );
  }
}
