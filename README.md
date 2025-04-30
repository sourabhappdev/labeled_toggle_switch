<p align="center">
    <img src="https://raw.githubusercontent.com/sourabhappdev/labeled_toggle_switch/dev/assets/logo.png" alt="Package Logo" height="150" />
</p>

<p align="center">
	<i>A customizable Flutter toggle switch widget with labeled active/inactive states.</i>
</p>
<p align="center">
	<a href="https://pub.dev/packages/labeled_toggle_switch" target="_blank"><img src="https://img.shields.io/pub/v/labeled_toggle_switch.svg" alt="Pub Version"></a>
	<a href="https://github.com/sourabhappdev/labeled_toggle_switch/actions/workflows/build.yml/badge.svg" target="_blank"><img src="https://github.com/sourabhappdev/labeled_toggle_switch/actions/workflows/build.yml/badge.svg" alt="Build Status"></a>
	<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License"></a>
	<a href="https://flutter.dev" target="_blank"><img src="https://img.shields.io/badge/platform-flutter-ff69b4.svg" alt="Platform"></a>
</p>

---

# labeled_toggle_switch

**LabeledToggleSwitch** is a lightweight Flutter package that provides a beautiful and customizable toggle switch with text labels like `ACTIVE` / `INACTIVE`, instead of just a knob. It’s ideal for toggles where labeled states improve clarity.

---

## 🚀 Features

- Customizable active/inactive labels
- Configurable colors, knob size, and dimensions
- Smooth animation
- Fully stateless and easy to integrate
- Perfect for form toggles, settings, and UI switches

---

## 🛠 Installation

```yaml
flutter pub add labeled_toggle_switch
```

---

## 📦 Import

```dart
import 'package:labeled_toggle_switch/labeled_toggle_switch.dart';
```

---

## 💡 Basic Example

```dart
bool isActive = false;

LabeledToggleSwitch(
  value: isActive,
  onChanged: (val) => setState(() => isActive = val),
)
```

---

## ⚙️ Full Example

```dart
import 'package:flutter/material.dart';
import 'package:labeled_toggle_switch/labeled_toggle_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToggleDemo(),
    );
  }
}

class ToggleDemo extends StatefulWidget {
  @override
  _ToggleDemoState createState() => _ToggleDemoState();
}

class _ToggleDemoState extends State<ToggleDemo> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Labeled Toggle Switch')),
      body: Center(
        child: LabeledToggleSwitch(
          value: isActive,
          onChanged: (newValue) {
            setState(() => isActive = newValue);
          },
          activeLabel: 'ENABLED',
          inactiveLabel: 'DISABLED',
          activeColor: Colors.green,
          inactiveColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
```

---

## 🎨 Customization Options

| Property            | Type               | Description                                        |
|---------------------|--------------------|----------------------------------------------------|
| `value`             | `bool`             | Current toggle state                               |
| `onChanged`         | `Function(bool)`   | Callback when toggled                              |
| `activeLabel`       | `String`           | Text when active (default: `ACTIVE`)               |
| `inactiveLabel`     | `String`           | Text when inactive (default: `INACTIVE`)           |
| `activeColor`       | `Color`            | Background when active (default: green)            |
| `inactiveColor`     | `Color`            | Background when inactive (default: light grey)     |
| `activeTextStyle`   | `TextStyle?`       | Optional active label style                        |
| `inactiveTextStyle` | `TextStyle?`       | Optional inactive label style                      |
| `height`            | `double`           | Height of the switch                               |
| `width`             | `double`           | Width of the switch                                |
| `knobSize`          | `double`           | Size of the circular knob                          |
| `animationDuration` | `Duration`         | Duration of the toggle animation                   |

---

## 📃 License

Licensed under the [MIT License](https://opensource.org/licenses/MIT)

---

## ❤️ Contribute

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

GitHub → [https://github.com/sourabhappdev/labeled_toggle_switch/tree/dev](https://github.com/sourabhappdev/labeled_toggle_switch/tree/dev)
