import 'package:flutter/material.dart';

class SlokaChapterSelector extends StatelessWidget {
  final int selectedChapter;
  final Function(int) onChapterSelected;

  const SlokaChapterSelector({
    super.key,
    required this.selectedChapter,
    required this.onChapterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 18,
        itemBuilder: (context, index) {
          final chapter = index + 1;
          return GestureDetector(
            onTap: () => onChapterSelected(chapter),
            child: Container(
              width: 50,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: selectedChapter == chapter ? Colors.orange[800] : Colors.orange[200],
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                '$chapter',
                style: TextStyle(
                  color: selectedChapter == chapter ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}