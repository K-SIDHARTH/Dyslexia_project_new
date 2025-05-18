import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textController = TextEditingController();
  double fontSize = 20.0;
  double lineHeight = 1.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paste & Read')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Paste or type text here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  textController.text,
                  style: TextStyle(
                    fontSize: fontSize,
                    height: lineHeight,
                    fontFamily: 'OpenDyslexic',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Font Size: \${fontSize.toStringAsFixed(1)}"),
            Slider(
              min: 16,
              max: 40,
              divisions: 24,
              value: fontSize,
              onChanged: (val) => setState(() => fontSize = val),
            ),
            Text("Line Spacing: \${lineHeight.toStringAsFixed(1)}"),
            Slider(
              min: 1.2,
              max: 3.0,
              divisions: 18,
              value: lineHeight,
              onChanged: (val) => setState(() => lineHeight = val),
            ),
          ],
        ),
      ),
    );
  }
}
