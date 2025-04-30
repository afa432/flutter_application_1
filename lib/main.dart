import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageViewExample());
  }
}

class PageViewExample extends StatelessWidget {
  final PageController controller = PageController();

  PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal, // YATAY kaydırma
        children: [
          Container(color: Colors.red, child: Center(child: Text('Fehim '))),
          Container(
            color: Colors.green,
            child: Center(child: Text('Hocamızı2')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Severiz 3')),
          ),
        ],
      ),
    );
  }
}
