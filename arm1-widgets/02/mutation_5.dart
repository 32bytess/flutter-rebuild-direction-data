import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late ReviewBatchState state;

  @override
  void initState() {
    super.initState();
    toasts = toastsValue;
    _bloc = ReviewBatchBloc();
    state = fixtureReviewBatchState;
  }

  late ReviewBatchBloc _bloc;

  void _showFullImage(FirestoreDocument wall) {
    final url = wall.wallpaperUrl.isNotEmpty
        ? wall.wallpaperUrl
        : wall.wallpaperThumb;
    if (url.isEmpty) return;

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => const _FullImagePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _BottomBar(
      canUndo: state.canUndo,
      hasMoreWalls: state.hasMoreWalls,
      onUndo: () {
        _bloc.add(const ReviewBatchUndoRequested());
        toasts.codeSend('Undo successful');
      },
      onView: () {
        final wall = state.currentWall;
        if (wall != null) {
          _showFullImage(wall);
        }
      },
      onSkip: () {
        _bloc.add(const ReviewBatchSwipeSkipped());
      },
      onList: () {
        Navigator.of(context).maybePop();
      },
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.canUndo,
    required this.hasMoreWalls,
    required this.onUndo,
    required this.onView,
    required this.onSkip,
    required this.onList,
  });

  final bool canUndo;
  final bool hasMoreWalls;
  final VoidCallback onUndo;
  final VoidCallback onView;
  final VoidCallback onSkip;
  final VoidCallback onList;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _ActionButton(
              icon: Icons.undo,
              label: 'Undo',
              color: Colors.orange,
              enabled: canUndo,
              onTap: onUndo,
            ),
            _ActionButton(
              icon: Icons.fullscreen,
              label: 'View',
              color: Colors.indigo,
              enabled: hasMoreWalls,
              onTap: onView,
            ),
            _ActionButton(
              icon: Icons.skip_next,
              label: 'Skip',
              color: Colors.blue,
              enabled: hasMoreWalls,
              onTap: onSkip,
            ),
            _ActionButton(
              icon: Icons.list,
              label: 'List',
              color: Colors.purple,
              onTap: onList,
            ),
          ],
        ),
      ),
    );
  }
}

class _FullImagePage extends StatelessWidget {
  const _FullImagePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: InteractiveViewer(
        maxScale: 5,
        child: Center(
          child: Container(
            color: Colors.grey.shade300,
            width: 80,
            height: 80,
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final bool enabled;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    this.enabled = true,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1.0 : 0.4,
      child: InkWell(
        onTap: enabled ? onTap : null,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  shape: BoxShape.circle,
                  border: Border.all(color: color, width: 2),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}