import 'package:flutter/material.dart';
import 'package:labeled_toggle_switch/labeled_toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ToggleDemo());
  }
}

class ToggleDemo extends StatefulWidget {
  const ToggleDemo({super.key});

  @override
  ToggleDemoState createState() => ToggleDemoState();
}

class ToggleDemoState extends State<ToggleDemo> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Labeled Toggle Switch')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LabeledToggleSwitch(
              value: isActive,
              onChanged: (newValue) {
                setState(() => isActive = newValue);
              },
            ),
          ),
          SizedBox(height: 8),
          Center(
            child: LabeledToggleSwitch(
              width: 100,
              value: isActive,
              onChanged: (newValue) {
                setState(() => isActive = newValue);
              },
            ),
          ),
        ],
      ),
    );
  }
}
