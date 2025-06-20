import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器类组件示例',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PaddingDecoratedBoxDemo(),
    );
  }
}

class PaddingDecoratedBoxDemo extends StatelessWidget {
  const PaddingDecoratedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding & DecoratedBox 示例')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0), // 外部填充
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 4),
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ), // 内部填充
              child: Text(
                'Hello, Padding & DecoratedBox!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
