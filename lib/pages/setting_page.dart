import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  static const String routeName = "/settings";
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body:Column(
        children: [
          const SettingsItem(label: "Setting"),
          const SettingsItem(label: "Clear All Data"),
        ],
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String label;
  const SettingsItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
      color: Colors.purple[200],
      borderRadius: BorderRadius.circular(20)

      ),
      child: Center(child: Text(label)),
    
    );
  }
}
