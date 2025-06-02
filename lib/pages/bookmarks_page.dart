import 'package:flutter/material.dart';
import '../models/sloka_model.dart';
import '../models/bookmark_service.dart';
import '../widgets/sloka_list_item.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  List<SlokaModel> _bookmarkedSlokas = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadBookmarks();
  }

  Future<void> _loadBookmarks() async {
    setState(() => _isLoading = true);
    final bookmarks = await BookmarkService.getBookmarkedSlokas();
    if (mounted) {
      setState(() {
        _bookmarkedSlokas = bookmarks;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator(color: Colors.orange));
    }
    
    if (_bookmarkedSlokas.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bookmark_border, size: 80, color: Colors.grey),
            SizedBox(height: 16),
            Text('Belum ada sloka', style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),
      );
    }
    
    return RefreshIndicator(
      onRefresh: _loadBookmarks,
      color: Colors.orange,
      child: ListView.builder(
        itemCount: _bookmarkedSlokas.length,
        itemBuilder: (context, index) => SlokaListItem(sloka: _bookmarkedSlokas[index]),
      ),
    );
  }
}