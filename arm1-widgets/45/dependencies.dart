// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'base.dart';

enum PodcastEpisodeFilter {
  none(id: 0),
  started(id: 1),
  played(id: 2),
  notPlayed(id: 3);

  const PodcastEpisodeFilter({required this.id});

  final int id;
}

enum PodcastEvent {
  subscribe,
  unsubscribe,
  markAllPlayed,
  clearAllPlayed,
  reloadSubscriptions,
  refreshSubscriptions,
  refresh,
  // Filter
  episodeFilterNone,
  episodeFilterStarted,
  episodeFilterNotFinished,
  episodeFilterFinished,
  // Sort
  episodeSortDefault,
  episodeSortLatest,
  episodeSortEarliest,
  episodeSortAlphabeticalAscending,
  episodeSortAlphabeticalDescending,
}

class Podcast {
  final PodcastEpisodeFilter filter;

  Podcast({required this.filter});
}

class PodcastBloc {
  void podcastEvent(PodcastEvent event) {}
}

class Provider {
  static T of<T>(BuildContext context) => PodcastBloc() as T;
}

class L {
  static L? of(BuildContext context) => L();

  String get episode_filter_semantic_label => 'Filter episodes';
  String get episode_filter_none_label => 'None';
  String get episode_filter_started_label => 'Started';
  String get episode_filter_played_label => 'Played';
  String get episode_filter_unplayed_label => 'Unplayed';
}

// Frozen runtime fixtures (shared by base and all mutations).
Podcast makePodcast() => Podcast(filter: PodcastEpisodeFilter.none);
