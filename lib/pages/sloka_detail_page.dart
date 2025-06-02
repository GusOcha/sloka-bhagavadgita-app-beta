import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../models/sloka_model.dart';
import '../models/bookmark_service.dart';
import 'package:provider/provider.dart';
import '../models/text_size_provider.dart';

class SlokaDetailPage extends StatefulWidget {
  final SlokaModel sloka;
  
  const SlokaDetailPage({super.key, required this.sloka});

  @override
  State<SlokaDetailPage> createState() => _SlokaDetailPageState();
}

class _SlokaDetailPageState extends State<SlokaDetailPage> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  bool _isBookmarked = false;
  
  @override
  void initState() {
    super.initState();
    _isBookmarked = widget.sloka.isBookmarked;
    _loadBookmarkStatus();
    
    _audioPlayer.onPlayerStateChanged.listen((state) {
      if (mounted) setState(() => _isPlaying = state == PlayerState.playing);
    });
  }
  
  Future<void> _loadBookmarkStatus() async {
    bool isBookmarked = await BookmarkService.isBookmarked(widget.sloka.id);
    if (mounted) setState(() => _isBookmarked = isBookmarked);
  }
  
  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
  
  void _togglePlay() async {
    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
      } else {
        await _audioPlayer.stop();
        await _audioPlayer.play(UrlSource(widget.sloka.audioUrl));
      }
      setState(() => _isPlaying = !_isPlaying);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to play: ${e.toString()}')),
      );
    }
  }
  
  void _toggleBookmark() async {
    await BookmarkService.toggleBookmark(widget.sloka);
    final globalIndex = dummySlokas.indexWhere(
      (s) => s.chapter == widget.sloka.chapter && s.verse == widget.sloka.verse
    );
    
    bool newBookmarkState = globalIndex >= 0 
      ? dummySlokas[globalIndex].isBookmarked 
      : !_isBookmarked;
    
    setState(() {
      _isBookmarked = newBookmarkState;
      widget.sloka.isBookmarked = newBookmarkState;
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(newBookmarkState ? 'Ditambahkan ke bookmark' : 'Dihapus dari bookmark'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textSize = context.watch<TextSizeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Bab ${widget.sloka.chapter}, Sloka ${widget.sloka.verse}'),
        actions: [
          IconButton(
            icon: Icon(_isBookmarked ? Icons.bookmark : Icons.bookmark_outline),
            onPressed: _toggleBookmark,
          ),
          // IconButton(
          //   icon: const Icon(Icons.share),
          //   onPressed: () {}, // Implement share functionality
          // ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Audio Player
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 48,
                    icon: Icon(
                      _isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                      color: Colors.orange[800],
                    ),
                    onPressed: _togglePlay,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dengarkan Pengucapan',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        _isPlaying ? 'Memutar audio...' : 'Tekan untuk memutar',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Sanskrit Text
            Text(
              'Teks Sansekerta',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize.fontSize + 2, color: Colors.orange),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Text(
                widget.sloka.sanskritText,
                style: TextStyle(fontSize: textSize.fontSize, height: 1.5),
              ),
            ),
            
            const SizedBox(height: 24),

            // Transliteration
            Text(
              'Transliterasi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize.fontSize + 2,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Text(
                widget.sloka.transliteration,
                style: TextStyle(
                  fontSize: textSize.fontSize,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            // Indonesian Translation
            Text(
              'Terjemahan Bahasa Indonesia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize.fontSize + 2,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Text(
                widget.sloka.indonesianTranslation,
                style: TextStyle(
                  fontSize: textSize.fontSize,
                  height: 1.5,
                ),
              ),
            ),
            
            const SizedBox(height: 24),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to previous sloka
                    final currentIndex = dummySlokas.indexWhere(
                      (s) => s.chapter == widget.sloka.chapter && s.verse == widget.sloka.verse
                    );
                    
                    if (currentIndex > 0) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SlokaDetailPage(sloka: dummySlokas[currentIndex - 1]),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Sloka Sebelumnya'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[800],
                    foregroundColor: Colors.white,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to next sloka
                    final currentIndex = dummySlokas.indexWhere(
                      (s) => s.chapter == widget.sloka.chapter && s.verse == widget.sloka.verse
                    );
                    
                    if (currentIndex < dummySlokas.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SlokaDetailPage(sloka: dummySlokas[currentIndex + 1]),
                        ),
                      );
                    }
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Sloka Berikutnya'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[800],
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}