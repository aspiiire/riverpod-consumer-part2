import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final myProvider = Provider((ref) => 40);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final int someNumber = 22;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Consumer(builder: (BuildContext context, WidgetRef ref, _) {
            int myValue = ref.watch(myProvider);

            return Text('Some number $myValue');
          }),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                print('yo!');
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
