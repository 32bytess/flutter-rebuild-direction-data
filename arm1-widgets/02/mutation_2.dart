import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

enum _ActionKind { undo, view, skip, list }

class _ActionSpec {
  final _ActionKind kind;
  final IconData icon;
  final String label;
  final Color color;

  const _ActionSpec({
    required this.kind,
    required this.icon,
    required this.label,
    required this.color,
  });
}

const List<_ActionSpec> _kActions = [
  _ActionSpec(
    kind: _ActionKind.undo,
    icon: Icons.undo,
    label: 'Undo',
    color: Colors.orange,
  ),
  _ActionSpec(
    kind: _ActionKind.view,
    icon: Icons.fullscreen,
    label: 'View',
    color: Colors.indigo,
  ),
  _ActionSpec(
    kind: _ActionKind.skip,
    icon: Icons.skip_next,
    label: 'Skip',
    color: Colors.blue,
  ),
  _ActionSpec(
    kind: _ActionKind.list,
    icon: Icons.list,
    label: 'List',
    color: Colors.purple,
  ),
];

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late ReviewBatchState state;

  @override
  void initState() {
    super.initState();
    toasts = toastsValue;
    _bloc = ReviewBatchBloc();
    state = fixtureReviewBatchState;
  }

  bool _enabledFor(_ActionKind kind, ReviewBatchState state) {
    switch (kind) {
      case _ActionKind.undo:
        return state.canUndo;
      case _ActionKind.view:
        return state.hasMoreWalls;
      case _ActionKind.skip:
        return state.hasMoreWalls;
      case _ActionKind.list:
        return true;
    }
  }

  VoidCallback _onTapFor(_ActionKind kind, ReviewBatchState state) {
    switch (kind) {
      case _ActionKind.undo:
        return () {
          _bloc.add(const ReviewBatchUndoRequested());
          toasts.codeSend('Undo successful');
        };
      case _ActionKind.view:
        return () {
          final wall = state.currentWall;
          if (wall != null) {
            _showFullImage(wall);
          }
        };
      case _ActionKind.skip:
        return () {
          _bloc.add(const ReviewBatchSwipeSkipped());
        };
      case _ActionKind.list:
        return () {
          Navigator.of(context).maybePop();
        };
    }
  }

  Widget _buildBottomBar(ReviewBatchState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _kActions
              .map(
                (spec) => _ActionButton(
                  icon: spec.icon,
                  label: spec.label,
                  color: spec.color,
                  enabled: _enabledFor(spec.kind, state),
                  onTap: _onTapFor(spec.kind, state),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  late ReviewBatchBloc _bloc;

  void _showFullImage(FirestoreDocument wall) {
    final url = wall.wallpaperUrl.isNotEmpty
        ? wall.wallpaperUrl
        : wall.wallpaperThumb;
    if (url.isEmpty) return;

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => Scaffold(
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBottomBar(state);
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