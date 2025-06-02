import 'package:flutter/material.dart';
import '../models/sloka_model.dart';
import 'sloka_list_item.dart';

class ChapterSlokaList extends StatelessWidget {
  final int chapter;
  
  const ChapterSlokaList({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    final chapterSlokas = dummySlokas.where((sloka) => sloka.chapter == chapter).toList();
    
    return ListView.builder(
      itemCount: chapterSlokas.length,
      itemBuilder: (context, index) {
        return SlokaListItem(sloka: chapterSlokas[index]);
      },
    );
  }
}