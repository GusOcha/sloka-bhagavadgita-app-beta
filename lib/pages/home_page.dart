import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/sloka_model.dart';
import '../models/bookmark_service.dart';
import 'sloka_list_page.dart';
import 'bookmarks_page.dart';
import 'settings_page.dart';
import 'search_delegate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool _initialized = false;

  final List<Widget> _pages = [
    const SlokaListPage(),
    const BookmarksPage(),
    const SettingsPage(),
  ];
  
  @override
  void initState() {
    super.initState();
    _loadBookmarkData();
  }
  
  Future<void> _loadBookmarkData() async {
    if (_initialized) return;
    final bookmarkedSlokas = await BookmarkService.getBookmarkedSlokas();
    
    for (final bookmarked in bookmarkedSlokas) {
      final index = dummySlokas.indexWhere(
        (sloka) => sloka.chapter == bookmarked.chapter && sloka.verse == bookmarked.verse
      );
      if (index != -1) {
        dummySlokas[index].isBookmarked = true;
      }
    }
    
    setState(() {
      _initialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bhagavad Gita'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SlokaSearchDelegate(),
              );
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange[800],
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Sloka'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Bookmark'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}