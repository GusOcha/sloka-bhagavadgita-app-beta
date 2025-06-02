import 'package:flutter/material.dart';
import '../widgets/sloka_chapter_selector.dart';
import '../widgets/chapter_sloka_list.dart';

class SlokaListPage extends StatefulWidget {
  const SlokaListPage({super.key});

  @override
  State<SlokaListPage> createState() => _SlokaListPageState();
}

class _SlokaListPageState extends State<SlokaListPage> {
  int _selectedChapter = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlokaChapterSelector(
          selectedChapter: _selectedChapter,
          onChapterSelected: (chapter) => setState(() => _selectedChapter = chapter),
        ),
        Expanded(
          child: ChapterSlokaList(chapter: _selectedChapter),
        ),
      ],
    );
  }
}