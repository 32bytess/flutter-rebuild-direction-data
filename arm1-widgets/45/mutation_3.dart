// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Podcast podcast;

  @override
  void initState() {
    super.initState();
    podcast = makePodcast();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SliderHandle(),
        Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Semantics(
            header: true,
            child: Text(
              L.of(context)!.episode_filter_semantic_label,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Divider(),
              EpisodeFilterSelectorEntry(
                label: L.of(context)!.episode_filter_none_label,
                filter: PodcastEpisodeFilter.none,
                selectedFilter: podcast.filter,
              ),
              Divider(),
              EpisodeFilterSelectorEntry(
                label: L.of(context)!.episode_filter_started_label,
                filter: PodcastEpisodeFilter.started,
                selectedFilter: podcast.filter,
              ),
              Divider(),
              EpisodeFilterSelectorEntry(
                label: L.of(context)!.episode_filter_played_label,
                filter: PodcastEpisodeFilter.played,
                selectedFilter: podcast.filter,
              ),
              Divider(),
              EpisodeFilterSelectorEntry(
                label: L.of(context)!.episode_filter_unplayed_label,
                filter: PodcastEpisodeFilter.notPlayed,
                selectedFilter: podcast.filter,
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
class EpisodeFilterSelectorEntry extends StatelessWidget {
  const EpisodeFilterSelectorEntry({
    super.key,
    required this.label,
    required this.filter,
    required this.selectedFilter,
  });

  final String label;
  final PodcastEpisodeFilter filter;
  final PodcastEpisodeFilter selectedFilter;

  @override
  Widget build(BuildContext context) {
    final podcastBloc = Provider.of<PodcastBloc>(context);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        switch (filter) {
          case PodcastEpisodeFilter.none:
            podcastBloc.podcastEvent(PodcastEvent.episodeFilterNone);
            break;
          case PodcastEpisodeFilter.started:
            podcastBloc.podcastEvent(PodcastEvent.episodeFilterStarted);
            break;
          case PodcastEpisodeFilter.played:
            podcastBloc.podcastEvent(PodcastEvent.episodeFilterFinished);
            break;
          case PodcastEpisodeFilter.notPlayed:
            podcastBloc.podcastEvent(PodcastEvent.episodeFilterNotFinished);
            break;
        }

        Navigator.pop(context);
      },
      child: Padding(
        padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Semantics(
              selected: filter == selectedFilter,
              child: Text(label, style: Theme.of(context).textTheme.bodyLarge),
            ),
            if (filter == selectedFilter) Icon(Icons.check, size: 18.0),
          ],
        ),
      ),
    );
  }
}
/// This class generates a simple 'handle' icon that can be added on widgets such as
/// scrollable sheets and bottom dialogs.
///
/// When running with a screen reader, the handle icon becomes selectable with an
/// optional label and tap callback. This makes it easier to open/close.
class SliderHandle extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String label;

  const SliderHandle({super.key, this.onTap, this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      liveRegion: true,
      label: label,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            width: 36,
            height: 4,
            decoration: BoxDecoration(
              color: Theme.of(context).hintColor,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
        ),
      ),
    );
  }
}