import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/sloka_model.dart';
import '../models/bookmark_service.dart';
import 'sloka_list_page.dart';
import 'bookmarks_page.dart';
import 'settings_page.dart';
import 'search_delegate.dart';
import '../widgets/guideline_dialog.dart';

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
    _showGuidelineIfFirstTime();
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

  Future<void> _showGuidelineIfFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    final alwaysShow = prefs.getBool('alwaysShowGuideline') ?? false;
    final dontShow = prefs.getBool('dontShowGuideline') ?? false;

    if (alwaysShow || !dontShow) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => GuidelineDialog(
          showDontShowAgain: !alwaysShow,
          onDontShowAgainChanged: (val) async {
            await prefs.setBool('dontShowGuideline', val);
          },
        ),
      );
    }
  }

  void _showGuidelineDialog() {
    showDialog(
      context: context,
      builder: (_) => const GuidelineDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bhagavad Gita'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.help_outline),
          onPressed: _showGuidelineDialog,
        ),
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
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Pengaturan'),
        ],
      ),
    );
  }
}