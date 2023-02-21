import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends HookWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = useState<int>(0);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Text(
            counter.value.toString(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => counter.value++,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
