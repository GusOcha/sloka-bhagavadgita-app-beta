import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/text_size_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
          onTap:
              () => showAboutDialog(
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
