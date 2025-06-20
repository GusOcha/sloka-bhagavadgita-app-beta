import 'package:flutter/material.dart';

class GuidelineDialog extends StatefulWidget {
  final bool showDontShowAgain;
  final ValueChanged<bool>? onDontShowAgainChanged;

  const GuidelineDialog({
    super.key,
    this.showDontShowAgain = false,
    this.onDontShowAgainChanged,
  });

  @override
  State<GuidelineDialog> createState() => _GuidelineDialogState();
}

class _GuidelineDialogState extends State<GuidelineDialog> {
  bool _dontShowAgain = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Panduan Membaca Sloka'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 8),
            Text('1. Bacalah teks Sansekerta dengan perlahan dan penuh penghayatan.'),
            Text('2. Perhatikan transliterasi untuk membantu pelafalan.'),
            Text('3. Pahami makna melalui terjemahan Bahasa Indonesia.'),
            Text('4. Dengarkan audio untuk memperbaiki pelafalan.'),
            Text('5. Renungkan makna setiap sloka dalam kehidupan sehari-hari.'),
          ],
        ),
      ),
      actions: [
        if (widget.showDontShowAgain)
          Row(
            children: [
              Checkbox(
                value: _dontShowAgain,
                onChanged: (val) {
                  setState(() => _dontShowAgain = val ?? false);
                  widget.onDontShowAgainChanged?.call(val ?? false);
                },
              ),
              const Text("Jangan tampilkan lagi"),
              const Spacer(),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Tutup'),
              ),
            ],
          )
        else
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Tutup'),
          ),
      ],
    );
  }
}