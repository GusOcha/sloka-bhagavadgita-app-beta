import 'package:flutter/material.dart';
import '../models/sloka_model.dart';
import '../models/bookmark_service.dart';
import '../pages/sloka_detail_page.dart';
import 'package:provider/provider.dart';
import '../models/text_size_provider.dart';

class SlokaListItem extends StatefulWidget {
  final SlokaModel sloka;
  
  const SlokaListItem({super.key, required this.sloka});

  @override
  State<SlokaListItem> createState() => _SlokaListItemState();
}

class _SlokaListItemState extends State<SlokaListItem> {
  late bool _isBookmarked;
  
  @override
  void initState() {
    super.initState();
    _isBookmarked = widget.sloka.isBookmarked;
  }
  
  @override
  void didUpdateWidget(SlokaListItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.sloka.isBookmarked != widget.sloka.isBookmarked) {
      setState(() => _isBookmarked = widget.sloka.isBookmarked);
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
    
    if (mounted) {
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
  }

  @override
  Widget build(BuildContext context) {
    final textSize = context.watch<TextSizeProvider>();
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SlokaDetailPage(sloka: widget.sloka)),
        ).then((_) {
          if (mounted) setState(() => _isBookmarked = widget.sloka.isBookmarked);
        }),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bab ${widget.sloka.chapter}, Sloka ${widget.sloka.verse}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: textSize.fontSize),
                  ),
                  InkWell(
                    onTap: _toggleBookmark,
                    borderRadius: BorderRadius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        widget.sloka.isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                        color: widget.sloka.isBookmarked ? Colors.orange[800] : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                widget.sloka.sanskritText,
                style: TextStyle(
                  fontStyle: FontStyle.italic, 
                  fontSize: textSize.fontSize
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                widget.sloka.indonesianTranslation,
                style: TextStyle(fontSize: textSize.fontSize),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//ORIGIN CODE