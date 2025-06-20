import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import '../models/text_size_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _alwaysShowGuideline = false;

  @override
  void initState() {
    super.initState();
    _loadAlwaysShowGuideline();
  }

  Future<void> _loadAlwaysShowGuideline() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _alwaysShowGuideline = prefs.getBool('alwaysShowGuideline') ?? false;
    });
  }

  Future<void> _setAlwaysShowGuideline(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('alwaysShowGuideline', value);
    setState(() {
      _alwaysShowGuideline = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textSize = context.watch<TextSizeProvider>();
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Informasi Aplikasi',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 24),
        ListTile(
          leading: Icon(Icons.info_outline, color: Colors.orange[800]),
          title: Text(
            'Tentang Aplikasi',
            style: TextStyle(fontSize: textSize.fontSize),
          ),
          onTap: () => showAboutDialog(
            context: context,
            applicationName: 'Bhagavad Gita',
            applicationVersion: '1.0.0',
            applicationLegalese: '© 2025 Bhagavad Gita App',
            children: const [
              SizedBox(height: 24),
              Text(
                'Aplikasi Bhagavad Gita adalah aplikasi yang berisi sloka-sloka dalam Bhagavad Gita beserta terjemahan dan audio pengucapannya.',
              ),
            ],
          ),
        ),
        SwitchListTile(
          title: Text(
            'Selalu tampilkan panduan saat aplikasi dibuka',
            style: TextStyle(fontSize: textSize.fontSize),
          ),
          value: _alwaysShowGuideline,
          onChanged: (val) => _setAlwaysShowGuideline(val),
          activeColor: Colors.orange[800],
        ),
        Consumer<TextSizeProvider>(
          builder: (context, textSizeProvider, child) {
            return ListTile(
              leading: Icon(Icons.text_fields, color: Colors.orange[800]),
              title: Text(
                'Ukuran Teks',
                style: TextStyle(fontSize: textSize.fontSize),
              ),
              subtitle: Slider(
                value: textSizeProvider.fontSize,
                min: textSizeProvider.minSize,
                max: textSizeProvider.maxSize,
                divisions: 12,
                label: textSizeProvider.fontSize.toStringAsFixed(1),
                onChanged: (value) => textSizeProvider.setFontSize(value),
              ),
            );
          },
        ),
      ],
    );
  }
}